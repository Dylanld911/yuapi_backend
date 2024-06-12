package com.yupi.yuapiinterface.filter;

import org.springframework.stereotype.Component;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


/**
 * yuapi-interface com.yupi.yuapiinterface.filter
 * 2024/6/12 12:10
 * @Author LD
 */
@Component
public class RequestHeaderFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // 初始化代码（如果您需要的话）
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;

        // 校验 X-Request 头信息
        String xRequestHeader = httpRequest.getHeader("X-Request");
        if (xRequestHeader == null || !xRequestHeader.equals("yuapi")) {
            httpResponse.sendError(HttpServletResponse.SC_FORBIDDEN, "Missing or invalid X-Request header");
            // 发送错误信息
            httpResponse.setContentType("application/json"); // 设置内容类型
            httpResponse.setCharacterEncoding("UTF-8"); // 设置字符编码
            httpResponse.getWriter().write("{\"error\":\"Missing or invalid X-Request header\"}"); // 写入错误信息
            return;
        }

        chain.doFilter(request, response); // 继续执行下一个过滤器（如果有）或者请求
    }

    @Override
    public void destroy() {
        // 清理资源代码（如果您需要的话）
    }
}
