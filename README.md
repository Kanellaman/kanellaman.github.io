# Reminders

## Directory Structure

- **`_includes/`**: Contains reusable components (e.g., headers, footers).
- **`_layouts/`**: Contains layout templates for your pages (e.g., default, post).
- **`_posts/`**: Contains blog posts or content pages in Markdown format.
- **`assets/`**: Contains static files like CSS, JavaScript, and images.
- **`_config.yml`**: Configuration file for Jekyll.

## Making Changes

- **Content**: Edit or add Markdown files in `_posts/` for blog posts or other content.
- **Layouts**: Modify HTML files in `_layouts/` to change the structure of your pages.
- **Includes**: Edit or add files in `_includes/` for reusable page elements.
- **Styling**: Update CSS files in `assets/` to change the look and feel of your site.

## Starting the Site Locally

1. **Install Dependencies**:
   ```bash
   bundle install || bundle update
   ```
2. **Start Jekyll Server**:
   ```bash
   bundle exec jekyll serve --livereload
   ```
   > [!NOTE]  
   > Do not edit files in the .jekyll-cache/ and \_site/ directories.
