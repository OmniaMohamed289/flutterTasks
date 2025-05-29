FROM gitpod/workspace-full:latest

# تثبيت Flutter SDK
RUN git clone https://github.com/flutter/flutter.git /home/gitpod/flutter -b stable
ENV PATH="/home/gitpod/flutter/bin:/home/gitpod/flutter/bin/cache/dart-sdk/bin:${PATH}"

# تحميل أدوات Flutter اللازمة
RUN flutter doctor

# ممكن تضيف أوامر أخرى لتثبيت أدوات إضافية لو محتاج
