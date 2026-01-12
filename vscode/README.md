---

## 📦 Установка всех расширений

### Linux / WSL / macOS
```bash
cat vscode/extensions.md | grep -v '^#' | grep -v '^$' | xargs -n 1 code --install-extension