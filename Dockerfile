FROM denoland/deno:alpine-1.39.0

EXPOSE 1993

WORKDIR /app

USER deno

COPY deno.* .
COPY deps.ts .
RUN deno cache deps.ts

COPY . .
RUN deno cache main.ts

CMD ["deno", "task", "dev"]
