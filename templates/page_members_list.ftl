<!DOCTYPE html>
<html lang="zh-CN" class="scroll-smooth">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>成员列表 / Members - ${site.title!}</title>
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
                            <li><a href="${context!}/members" class="nav-item active">成员 / Members</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </nav>

    <!-- Main Content -->
    <main class="min-h-screen pt-20 lg:pt-28 pb-12">
        <div class="w-full max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            
            <!-- Page Header -->
            <div class="mb-12 text-center">
                <h1 class="text-4xl lg:text-5xl font-serif font-bold text-primary mb-4">
                    团队成员 / Team Members
                </h1>
                <p class="text-lg text-neutral-600">Our research group members</p>
            </div>

            <!-- Category Tabs -->
            <div class="flex flex-wrap justify-center gap-3 mb-12">
                <button class="filter-btn active" data-filter="all">
                    全部 / All
                </button>
                <button class="filter-btn" data-filter="teacher">
                    教师 / Faculty
                </button>
                <button class="filter-btn" data-filter="postdoc">
                    博士后 / Postdoc
                </button>
                <button class="filter-btn" data-filter="phd">
                    博士生 / PhD
                </button>
                <button class="filter-btn" data-filter="master">
                    硕士生 / Master
                </button>
                <button class="filter-btn" data-filter="graduated">
                    已毕业 / Alumni
                </button>
            </div>

            <!-- Members Grid -->
            <div id="members-grid" class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
                <!-- Members will be loaded here -->
                <div class="col-span-full text-center py-12">
                    <p class="text-neutral-500">加载中... / Loading...</p>
                </div>
            </div>

        </div>
    </main>

    <!-- Footer -->
    <footer class="bg-white border-t border-neutral-200 py-8 mt-12">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
            <p class="text-neutral-500 text-sm">
                &copy; ${.now?string('yyyy')} ${site.title!}. All rights reserved. <br>
                Powered by <a href="https://halo.run" target="_blank" class="text-accent hover:text-accent-dark">Halo</a> | Theme: <a href="https://github.com/GLY2024/AcaNova-Halo" class="text-accent hover:text-accent-dark">AcaNova</a>
            </p>
        </div>
    </footer>

    <style>
        .filter-btn {
            padding: 0.5rem 1.5rem;
            border-radius: 9999px;
            font-size: 0.875rem;
            font-weight: 500;
            background-color: white;
            color: #64748b;
            border: 1px solid #e5e7eb;
            transition: all 0.2s;
            cursor: pointer;
        }
        .filter-btn:hover {
            background-color: #f8f9fa;
            border-color: #d4a562;
            color: #d4a562;
        }
        .filter-btn.active {
            background-color: #d4a562;
            color: white;
            border-color: #d4a562;
        }
        .member-card {
            background: white;
            border-radius: 1rem;
            padding: 2rem;
            border: 1px solid #e5e7eb;
            transition: all 0.3s;
            height: 100%;
            display: flex;
            flex-direction: column;
        }
        .member-card:hover {
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
            transform: translateY(-5px);
        }
        .member-photo {
            width: 120px;
            height: 120px;
            border-radius: 0.75rem;
            object-fit: cover;
            margin: 0 auto 1.5rem;
            background-color: #f3f4f6;
        }
        .member-badge {
            display: inline-block;
            padding: 0.25rem 0.75rem;
            font-size: 0.75rem;
            border-radius: 9999px;
            margin-top: 0.5rem;
        }
        .badge-teacher { background-color: #dbeafe; color: #1e40af; }
        .badge-postdoc { background-color: #f3e8ff; color: #6b21a8; }
        .badge-phd { background-color: #dcfce7; color: #15803d; }
        .badge-master { background-color: #fef3c7; color: #a16207; }
        .badge-graduated { background-color: #f3f4f6; color: #374151; }
    </style>

    <script>
        // Member data structure
        // This would typically be loaded from an API endpoint
        // For now, we'll use a placeholder
        
        document.addEventListener('DOMContentLoaded', function() {
            // Filter functionality
            const filterBtns = document.querySelectorAll('.filter-btn');
            const membersGrid = document.getElementById('members-grid');
            
            filterBtns.forEach(btn => {
                btn.addEventListener('click', function() {
                    // Update active button
                    filterBtns.forEach(b => b.classList.remove('active'));
                    this.classList.add('active');
                    
                    const filter = this.dataset.filter;
                    loadMembers(filter);
                });
            });
            
            // Load members initially
            loadMembers('all');
        });
        
        function loadMembers(filter) {
            const membersGrid = document.getElementById('members-grid');
            
            // In a real implementation, this would fetch from Halo API
            // For now, show a helpful message
            membersGrid.innerHTML = `
                <div class="col-span-full text-center py-12">
                    <div class="max-w-2xl mx-auto">
                        <i class="fas fa-users text-6xl text-neutral-300 mb-6"></i>
                        <h3 class="text-2xl font-serif font-bold text-primary mb-4">如何添加成员 / How to Add Members</h3>
                        <div class="text-left bg-neutral-50 rounded-xl p-6 space-y-3">
                            <p class="text-neutral-700">1. 在 Halo 后台创建新页面</p>
                            <p class="text-neutral-700">2. 选择「成员学术主页」模板</p>
                            <p class="text-neutral-700">3. 填写成员信息和内容</p>
                            <p class="text-neutral-700">4. 发布后即可在此页面显示</p>
                        </div>
                        <div class="mt-6">
                            <a href="${context!}/admin/pages" class="inline-block px-6 py-3 bg-accent text-white rounded-lg hover:bg-accent-dark transition-colors">
                                <i class="fas fa-plus mr-2"></i>创建成员页面 / Create Member Page
                            </a>
                        </div>
                    </div>
                </div>
            `;
            
            // TODO: Implement actual member loading from Halo API
            // This would query pages using the member template and display them
        }
    </script>
</body>
</html>
