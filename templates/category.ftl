<!DOCTYPE html>
<html lang="zh-CN" class="scroll-smooth">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${category.name!} - ${settings.user_name!'Academic Homepage'}</title>
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
            <div class="section-header mb-8">
                <h1 class="text-4xl font-serif font-bold text-primary">
                    <i class="fas fa-folder-open mr-3"></i>${category.name!}
                </h1>
                <#if category.description??>
                <p class="text-neutral-500 mt-2">${category.description}</p>
                </#if>
            </div>

            <div class="space-y-6">
                <#list posts.content as post>
                <article class="news-item p-6 bg-white rounded-lg border border-neutral-100 hover:shadow-md transition-all duration-300">
                    <div class="flex flex-col gap-3">
                        <div class="flex items-start justify-between gap-4">
                            <h2 class="text-xl font-serif font-semibold text-primary hover:text-accent transition-colors">
                                <a href="${post.status.permalink}">${post.title}</a>
                            </h2>
                            <span class="news-date text-xs font-medium text-accent bg-accent/10 px-3 py-1 rounded whitespace-nowrap">
                                ${post.publishTime?string('yyyy-MM-dd')}
                            </span>
                        </div>
                        <#if post.excerpt??>
                        <p class="text-neutral-600 text-sm">${post.excerpt}</p>
                        </#if>
                    </div>
                </article>
                </#list>
            </div>

            <!-- Pagination -->
            <#if posts.totalPages gt 1>
            <nav class="flex justify-center mt-12">
                <ul class="flex gap-2">
                    <#if posts.hasPrevious()>
                    <li>
                        <a href="${posts.prevUrl!}" class="px-4 py-2 bg-white border border-neutral-200 rounded-lg hover:bg-accent hover:text-white hover:border-accent transition-colors">
                            <i class="fas fa-arrow-left"></i>
                        </a>
                    </li>
                    </#if>
                    
                    <#list 1..posts.totalPages as page>
                    <li>
                        <a href="?page=${page}" class="px-4 py-2 ${(page == posts.page + 1)?then('bg-accent text-white', 'bg-white text-neutral-700')} border border-neutral-200 rounded-lg hover:bg-accent hover:text-white hover:border-accent transition-colors">
                            ${page}
                        </a>
                    </li>
                    </#list>
                    
                    <#if posts.hasNext()>
                    <li>
                        <a href="${posts.nextUrl!}" class="px-4 py-2 bg-white border border-neutral-200 rounded-lg hover:bg-accent hover:text-white hover:border-accent transition-colors">
                            <i class="fas fa-arrow-right"></i>
                        </a>
                    </li>
                    </#if>
                </ul>
            </nav>
            </#if>

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
