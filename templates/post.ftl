<!DOCTYPE html>
<html lang="zh-CN" class="scroll-smooth">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${post.title!} - ${settings.user_name!'Academic Homepage'}</title>
    <meta name="description" content="${post.excerpt!}">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Crimson+Text:ital,wght@0,400;0,600;0,700;1,400&family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${theme.assets!}/styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
      tailwind.config = {
        theme: {
          extend: {
            colors: {
              background: '#fefffe',
              foreground: '#0f172a',
              primary: '#1e293b',
              accent: '${settings.accent_color!'#d4a562'}',
              'accent-dark': '${settings.accent_dark!'#b88a4d'}',
              muted: '#64748b',
            },
            fontFamily: {
              sans: ['Inter', 'sans-serif'],
              serif: ['Crimson Text', 'serif'],
            }
          }
        }
      }
    </script>
    <@global.head />
</head>
<body class="bg-background text-foreground antialiased font-sans">
    <!-- Top Navigation -->
    <nav class="top-nav glass fixed top-0 left-0 right-0 z-50 transition-all duration-300">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex justify-between items-center h-16 lg:h-20">
                <!-- Logo/Name -->
                <div class="flex-shrink-0">
                    <a href="${context!}" class="text-xl lg:text-2xl font-serif font-semibold text-primary hover:text-accent transition-colors duration-200">
                        ${settings.user_name!'Your Name'}
                    </a>
                </div>

                <!-- Desktop Navigation -->
                <div class="hidden lg:block">
                    <div class="ml-10 flex items-center space-x-8">
                        <ul class="nav-links flex space-x-8">
                            <li><a href="${context!}#homepage" class="nav-item">Homepage</a></li>
                            <li><a href="${context!}#about" class="nav-item">About Me</a></li>
                            <li><a href="${context!}/archives" class="nav-item">News</a></li>
                            <li><a href="${context!}#publications" class="nav-item">Publications</a></li>
                            <li><a href="${context!}#contact" class="nav-item">Contact</a></li>
                        </ul>
                    </div>
                </div>

                <!-- Mobile Menu Button -->
                <div class="lg:hidden flex items-center">
                    <button class="mobile-menu-btn p-2 rounded-md text-neutral-600 hover:text-primary">
                        <i class="fas fa-bars"></i>
                    </button>
                </div>
            </div>
        </div>
    </nav>

    <!-- Main Content -->
    <main class="min-h-screen pt-20 lg:pt-28 pb-12">
        <div class="w-full max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
            <!-- Post Header -->
            <article class="bg-white rounded-xl shadow-sm p-8">
                <header class="mb-8 pb-6 border-b border-neutral-200">
                    <h1 class="text-4xl font-serif font-bold text-primary mb-4">${post.title!}</h1>
                    <div class="flex items-center gap-4 text-sm text-neutral-500">
                        <time datetime="${post.publishTime?string('yyyy-MM-dd')}">
                            <i class="fas fa-calendar-alt mr-2"></i>${post.publishTime?string('yyyy-MM-dd')}
                        </time>
                        <#if post.categories?? && post.categories?size gt 0>
                        <span>
                            <i class="fas fa-folder mr-2"></i>
                            <#list post.categories as category>
                                <a href="${category.status.permalink}" class="text-accent hover:text-accent-dark">${category.name}</a><#sep>, </#sep>
                            </#list>
                        </span>
                        </#if>
                        <#if post.tags?? && post.tags?size gt 0>
                        <span>
                            <i class="fas fa-tags mr-2"></i>
                            <#list post.tags as tag>
                                <a href="${tag.status.permalink}" class="text-accent hover:text-accent-dark">${tag.name}</a><#sep>, </#sep>
                            </#list>
                        </span>
                        </#if>
                    </div>
                </header>

                <!-- Post Content -->
                <div class="prose max-w-none formal-font">
                    ${post.content.content!}
                </div>

                <!-- Post Footer -->
                <footer class="mt-8 pt-6 border-t border-neutral-200">
                    <div class="flex justify-between items-center">
                        <#if post.prevPost??>
                        <a href="${post.prevPost.status.permalink}" class="text-sm text-accent hover:text-accent-dark">
                            <i class="fas fa-arrow-left mr-2"></i>Previous: ${post.prevPost.title}
                        </a>
                        <#else>
                        <span></span>
                        </#if>
                        
                        <#if post.nextPost??>
                        <a href="${post.nextPost.status.permalink}" class="text-sm text-accent hover:text-accent-dark">
                            Next: ${post.nextPost.title}<i class="fas fa-arrow-right ml-2"></i>
                        </a>
                        </#if>
                    </div>
                </footer>
            </article>

            <!-- Back to Homepage -->
            <div class="text-center mt-8">
                <a href="${context!}" class="inline-block px-6 py-3 bg-accent text-white rounded-lg hover:bg-accent-dark transition-colors">
                    <i class="fas fa-home mr-2"></i>Back to Homepage
                </a>
            </div>
        </div>
    </main>

    <!-- Footer -->
    <footer class="bg-white border-t border-neutral-200 py-8 mt-12">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
            <p class="text-neutral-500 text-sm">
                &copy; ${.now?string('yyyy')} ${settings.user_name!'Your Name'}. All rights reserved. <br>
                Powered by <a href="https://halo.run" target="_blank" class="text-accent hover:text-accent-dark">Halo</a> | Theme: <a href="https://github.com/GLY2024/AcaNova-Halo" class="text-accent hover:text-accent-dark">AcaNova</a>
            </p>
        </div>
    </footer>

    <script src="${theme.assets!}/script.js"></script>
</body>
</html>
