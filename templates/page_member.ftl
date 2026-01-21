<!DOCTYPE html>
<html lang="zh-CN" class="scroll-smooth">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <#assign memberName = page.metaInfo.member_name_cn!page.title>
    <title>${memberName} - ${site.title!}</title>
    <meta name="description" content="${page.excerpt!'Academic Homepage'}">
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
              accent: '#d4a562',
              'accent-dark': '#b88a4d',
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
                <div class="flex-shrink-0">
                    <a href="${context!}" class="text-xl lg:text-2xl font-serif font-semibold text-primary hover:text-accent transition-colors duration-200">
                        ${site.title!}
                    </a>
                </div>
                <div class="hidden lg:block">
                    <div class="ml-10 flex items-center space-x-8">
                        <ul class="nav-links flex space-x-8">
                            <li><a href="${context!}" class="nav-item">首页 / Home</a></li>
                            <li><a href="${context!}/members" class="nav-item">成员 / Members</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </nav>

    <!-- Main Content -->
    <main class="min-h-screen pt-20 lg:pt-28 pb-12">
        <div class="w-full max-w-[1380px] mx-auto px-4 sm:px-6 lg:px-8">
            <div class="grid-layout">
                
                <!-- Left Column - Profile (Sticky) -->
                <div class="profile-column">
                    <div class="profile-card sticky top-24">
                        <!-- Profile Image -->
                        <div class="profile-image-container mb-6 mx-auto max-w-[180px]">
                            <#if page.metaInfo.member_photo??>
                                <img src="${page.metaInfo.member_photo}" alt="${memberName}" class="w-full h-auto rounded-xl shadow-sm bg-gray-200">
                            <#else>
                                <div class="w-full aspect-square rounded-xl shadow-sm bg-neutral-200 flex items-center justify-center">
                                    <i class="fas fa-user text-6xl text-neutral-400"></i>
                                </div>
                            </#if>
                        </div>

                        <!-- Name and Title -->
                        <div class="text-center mb-6">
                            <h1 class="text-3xl font-serif font-bold text-primary mb-2">
                                ${page.metaInfo.member_name_cn!'姓名'}
                                <#if page.metaInfo.member_name_en??>
                                    <br><span class="text-2xl">${page.metaInfo.member_name_en}</span>
                                </#if>
                            </h1>
                            <#if page.metaInfo.member_title??>
                                <p class="text-lg text-accent font-medium mb-1">${page.metaInfo.member_title}</p>
                            </#if>
                            <#-- Member Type Badge -->
                            <#assign memberType = page.metaInfo.member_type!"">
                            <#if memberType == "teacher">
                                <span class="inline-block px-3 py-1 text-sm bg-blue-100 text-blue-700 rounded-full">教师 / Faculty</span>
                            <#elseif memberType == "postdoc">
                                <span class="inline-block px-3 py-1 text-sm bg-purple-100 text-purple-700 rounded-full">博士后 / Postdoc</span>
                            <#elseif memberType == "phd">
                                <span class="inline-block px-3 py-1 text-sm bg-green-100 text-green-700 rounded-full">博士生 / PhD Student</span>
                            <#elseif memberType == "master">
                                <span class="inline-block px-3 py-1 text-sm bg-yellow-100 text-yellow-700 rounded-full">硕士生 / Master Student</span>
                            <#elseif memberType == "graduated_research">
                                <span class="inline-block px-3 py-1 text-sm bg-indigo-100 text-indigo-700 rounded-full">已毕业 / Alumni (Research)</span>
                            <#elseif memberType == "graduated_career">
                                <span class="inline-block px-3 py-1 text-sm bg-gray-100 text-gray-700 rounded-full">已毕业 / Alumni (Career)</span>
                            </#if>
                        </div>

                        <!-- Contact Links -->
                        <div class="social-links flex flex-wrap justify-center gap-3 mb-6">
                            <#if page.metaInfo.member_email??>
                            <a href="mailto:${page.metaInfo.member_email}" class="social-btn" title="Email"><i class="fas fa-envelope"></i></a>
                            </#if>
                            <#if page.metaInfo.google_scholar??>
                            <a href="${page.metaInfo.google_scholar}" target="_blank" class="social-btn" title="Google Scholar"><i class="fas fa-graduation-cap"></i></a>
                            </#if>
                            <#if page.metaInfo.github??>
                            <a href="${page.metaInfo.github}" target="_blank" class="social-btn" title="GitHub"><i class="fab fa-github"></i></a>
                            </#if>
                            <#if page.metaInfo.personal_website??>
                            <a href="${page.metaInfo.personal_website}" target="_blank" class="social-btn" title="Website"><i class="fas fa-link"></i></a>
                            </#if>
                            <#if page.metaInfo.linkedin??>
                            <a href="${page.metaInfo.linkedin}" target="_blank" class="social-btn" title="LinkedIn"><i class="fab fa-linkedin"></i></a>
                            </#if>
                            <#if page.metaInfo.orcid??>
                            <a href="${page.metaInfo.orcid}" target="_blank" class="social-btn" title="ORCID"><i class="fab fa-orcid"></i></a>
                            </#if>
                        </div>
                        
                        <!-- Research Interests -->
                        <#if page.metaInfo.research_interests?? && page.metaInfo.research_interests?size gt 0>
                        <div class="research-interests-card bg-neutral-100 rounded-xl p-5 mb-6">
                            <h3 class="font-serif font-bold text-lg text-primary mb-4 pb-2 border-b border-neutral-200 flex items-center">
                                <i class="fas fa-lightbulb text-accent mr-2 text-base"></i> 研究兴趣 / Research Interests
                            </h3>
                            <ul class="space-y-3">
                                <#list page.metaInfo.research_interests as interest>
                                <li class="flex items-center text-neutral-700 hover:text-primary transition-colors">
                                    <i class="fas fa-star text-accent/80 mr-3 w-5 text-center text-sm"></i>
                                    <span class="text-sm font-medium">${interest.interest!}</span>
                                </li>
                                </#list>
                            </ul>
                        </div>
                        </#if>

                        <!-- Contact Info -->
                        <#if page.metaInfo.member_office??>
                        <div class="bg-neutral-100 rounded-xl p-5">
                            <h3 class="font-serif font-bold text-lg text-primary mb-3 flex items-center">
                                <i class="fas fa-map-marker-alt text-accent mr-2 text-base"></i> 办公地址
                            </h3>
                            <p class="text-sm text-neutral-600">${page.metaInfo.member_office}</p>
                        </div>
                        </#if>

                    </div>
                </div>

                <!-- Right Column - Content -->
                <div class="content-column space-y-12">
                    
                    <!-- About / Main Content -->
                    <section id="about" class="scroll-mt-24">
                        <div class="prose max-w-none text-neutral-600 text-justify formal-font">
                            ${page.content.content!}
                        </div>
                    </section>

                    <!-- Advisor Info (for students) -->
                    <#if (memberType == "phd" || memberType == "master") && page.metaInfo.advisor_name??>
                    <section id="advisor" class="scroll-mt-24">
                        <div class="section-header mb-6">
                            <h2 class="text-3xl font-serif font-bold text-primary">👨‍🏫 导师 / Advisor</h2>
                        </div>
                        <div class="bg-neutral-50 rounded-xl p-6 border border-neutral-100">
                            <p class="text-lg text-neutral-700">
                                <#if page.metaInfo.advisor_link??>
                                    <a href="${page.metaInfo.advisor_link}" target="_blank" class="text-accent hover:text-accent-dark font-semibold">${page.metaInfo.advisor_name}</a>
                                <#else>
                                    <span class="font-semibold">${page.metaInfo.advisor_name}</span>
                                </#if>
                            </p>
                        </div>
                    </section>
                    </#if>

                    <!-- Expected Graduation (for students) -->
                    <#if (memberType == "phd" || memberType == "master") && page.metaInfo.expected_graduation??>
                    <section class="scroll-mt-24">
                        <div class="bg-blue-50 border-l-4 border-blue-500 p-4 rounded-r-lg">
                            <p class="text-sm text-blue-700">
                                <i class="fas fa-calendar-alt mr-2"></i>
                                <strong>预计毕业时间 / Expected Graduation:</strong> ${page.metaInfo.expected_graduation}
                            </p>
                        </div>
                    </section>
                    </#if>

                    <!-- Recruiting Info (for faculty/postdoc) -->
                    <#if (memberType == "teacher" || memberType == "postdoc") && page.metaInfo.is_recruiting?? && page.metaInfo.is_recruiting == true>
                    <section id="recruiting" class="scroll-mt-24">
                        <div class="highlight-box bg-accent/10 border-l-4 border-accent p-6 rounded-r-lg">
                            <h3 class="font-serif font-bold text-xl text-primary mb-3">
                                <i class="fas fa-users text-accent mr-2"></i>招生信息 / Recruiting
                            </h3>
                            <#if page.metaInfo.recruiting_info??>
                                <p class="text-neutral-700">${page.metaInfo.recruiting_info}</p>
                            <#else>
                                <p class="text-neutral-700">Currently accepting students. Please contact via email for more information.</p>
                            </#if>
                        </div>
                    </section>
                    </#if>

                    <!-- Education Background -->
                    <#if page.metaInfo.education_list?? && page.metaInfo.education_list?size gt 0>
                    <section id="education" class="scroll-mt-24">
                        <div class="section-header mb-6">
                            <h2 class="text-3xl font-serif font-bold text-primary">🎓 教育背景 / Education</h2>
                        </div>
                        <div class="timeline space-y-6">
                            <#list page.metaInfo.education_list as edu>
                            <div class="timeline-item flex gap-4">
                                <div class="school-logo-container w-16 h-16 flex-shrink-0 bg-white rounded-lg shadow-sm p-2 flex items-center justify-center border border-neutral-100">
                                    <i class="fas fa-graduation-cap text-3xl text-neutral-300"></i>
                                </div>
                                <div class="timeline-content">
                                    <h3 class="font-semibold text-primary">${edu.degree!}</h3>
                                    <p class="text-sm text-accent font-medium">${edu.university!}</p>
                                    <p class="text-sm text-neutral-500">${edu.period!}</p>
                                    <#if edu.major??>
                                    <p class="text-sm text-neutral-600 mt-1">${edu.major}</p>
                                    </#if>
                                </div>
                            </div>
                            </#list>
                        </div>
                    </section>
                    </#if>

                    <!-- Career Experience (for graduated members) -->
                    <#if (memberType == "graduated_career" || memberType == "graduated_research") && page.metaInfo.career_list?? && page.metaInfo.career_list?size gt 0>
                    <section id="career" class="scroll-mt-24">
                        <div class="section-header mb-6">
                            <h2 class="text-3xl font-serif font-bold text-primary">💼 工作经历 / Career Experience</h2>
                        </div>
                        <div class="timeline space-y-6">
                            <#list page.metaInfo.career_list as career>
                            <div class="timeline-item flex gap-4">
                                <div class="school-logo-container w-16 h-16 flex-shrink-0 bg-white rounded-lg shadow-sm p-2 flex items-center justify-center border border-neutral-100">
                                    <i class="fas fa-briefcase text-2xl text-accent"></i>
                                </div>
                                <div class="timeline-content">
                                    <h3 class="font-semibold text-primary">${career.position!}</h3>
                                    <p class="text-sm text-accent font-medium">${career.company!}</p>
                                    <p class="text-sm text-neutral-500">${career.period!}</p>
                                    <#if career.description??>
                                    <p class="text-sm text-neutral-600 mt-1 leading-relaxed">${career.description}</p>
                                    </#if>
                                </div>
                            </div>
                            </#list>
                        </div>
                    </section>
                    </#if>

                </div>
            </div>
        </div>
    </main>

    <!-- Footer -->
    <footer class="bg-white border-t border-neutral-200 py-8 mt-12">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
            <p class="text-neutral-500 text-sm">
                &copy; ${.now?string('yyyy')} ${memberName}. All rights reserved. <br>
                Powered by <a href="https://halo.run" target="_blank" class="text-accent hover:text-accent-dark">Halo</a> | Theme: <a href="https://github.com/GLY2024/AcaNova-Halo" class="text-accent hover:text-accent-dark">AcaNova</a>
            </p>
        </div>
    </footer>

    <script src="${theme.assets!}/script.js"></script>
</body>
</html>
