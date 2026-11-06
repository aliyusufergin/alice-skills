# Survey: sadelik, genellik ve plugin değerlendirmesi

## Intent
Skill'leri, alana özel kural yazmadan, ders çalışma sistemi gibi kod olmayan işlerde de çalışacak kadar genel ve kısa hale getirmek. Bunun ölçüsünü birincil kaynaklardan bulmak ve plugin'i ona göre değerlendirmek. Alan bilgisi skill'lerde değil, kullanıcının niyetinde ve spec'te durur; skill'ler süreci, yetkiyi ve devri tarif eder. Sıra: araştırma, değerlendirme raporu, ortak anlayış, ancak ondan sonra hedefli test.

Varsayımlar: kapsam kodlama ve kod dışı kişisel işler; Codex desteği sonra; araştırma sonucu bu dosyada kalır.

## Bottom line
Genel yaklaşımımızı kaynaklar destekliyor: kısa, gerekçeli, adım listesi yerine hedef veren skill'ler. Asıl değişiklik genellikte:

- **Süreç genel kalabilir, ama doğrulama ölçütü alana özgü olmak zorunda.** Doğrulama nasıl yapılacağını belirtmezse ajan kendi kendini onaylıyor. Çözüm, doğrulama yöntemini skill'e değil işin spec'ine koymak: kodda test komutu, derste gecikmeli ve ipucusuz hatırlama.
- **Skill'lerimizde gizli yazılım varsayımları var:** commit, diff, git geçmişi, `CLAUDE.md`, "build". Bunlar adım adım yükümlülük olarak yazılırsa genel kalır, örneğin "çalışmayı ve kaydı geri dönülebilir bir noktaya kaydet".
- **Değerlendirme okumayla bitmemeli.** Tetiklenme için yakın vakaları içeren yaklaşık 20 sorgu, uzun yol için de tek bir kod dışı proje testi en çok bilgiyi verir.

## Options
- **Tamamen nötr dil:** Her yerde "checkpoint", "değişiklik kaydı" gibi ifadeler. Genel, ama kod işinde biraz daha az kesin.
- **Nötr dil ve kısa bir yazılım örneği:** Örneğin "(in a repository, a commit)". Kesinlik korunur, ama alan örneği skill'e girer.
- **Alan dosyaları:** Ana skill nötr, alana özgü ayrıntılar ayrı başvuru dosyalarında. Anthropic bunu öneriyor, ama senin "derse özel komut yazmadan" niyetine ters.

## Pitfalls
- **Genel skill'ler belirsizleşebilir:** agentskills.io, genel ve LLM tarafından yazılmış skill'lerin bulanık prosedürlere dönüştüğünü söylüyor. Bizim değerimiz alan bilgisinde değil, sınırlarda: yetki, devir, durma koşulları.
- **Ağır akışlar:** Kiro küçük bir hata için 16 kabul kriteri üretti; spec'ler gözden geçirmesi koddan daha yorucu oldu ve ajanlar yine de spec'leri göz ardı etti.
- **Fazla soru:** Claude'un durma nedenlerinin büyük kısmı yaklaşım seçimi ve belirsiz istekler; yazarlar bazı soruların gereksiz olabileceğini belirtiyor. OpenAI ise belirsizliği sormadan çözüp gerekçeyi kaydetmeyi öneriyor.
- **Kendi kendine onay:** Ajanlar kendi işlerini fazla iyi değerlendiriyor; ayrı bir değerlendirici daha kolay ayarlanıyor, ama o da kendiliğinden yumuşak.
- **Modele bağlı iskelet:** Context sıfırlama ve sprint'ler yeni modellerde gereksiz hale geldi. Her parça yeni modelde yeniden sınanmalı.

## Decisions this opens
1. **Yazılım terimleri nasıl genelleşsin?** Önerim: tamamen nötr yükümlülük dili, yazılım örneği olmadan. Model repo'da "checkpoint"in commit olduğunu zaten bilir.
2. **Doğrulama yöntemi nerede tanımlansın?** Önerim: spec'teki "done means" her madde için nasıl doğrulanacağını söylesin; `/step` ve bağımsız kontrol ona dayansın.
3. **Değerlendirme yöntemi ne olsun?** Önerim: önce kaynaklara göre okuma raporu; ortak anlayıştan sonra tetiklenme sorguları ve tek bir ders çalışma projesiyle uzun yol testi.
4. **Codex uyumu şimdi mi?** Önerim: frontmatter'ı yalnızca `name` ve `description` ile tutmaya devam; Codex paketlemesi sonra.

## Sources
- Anthropic, Skill authoring best practices: https://platform.claude.com/docs/en/agents-and-tools/agent-skills/best-practices
- Claude Code skills: https://code.claude.com/docs/en/skills
- Agent Skills specification: https://agentskills.io/specification
- Agent Skills best practices: https://agentskills.io/skill-creation/best-practices
- Optimizing descriptions: https://agentskills.io/skill-creation/optimizing-descriptions
- Codex skills: https://learn.chatgpt.com/docs/build-skills
- Codex AGENTS.md: https://learn.chatgpt.com/docs/agent-configuration/agents-md
- Claude prompting best practices: https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/claude-prompting-best-practices
- Effective harnesses for long-running agents (2025-11-26): https://www.anthropic.com/engineering/effective-harnesses-for-long-running-agents
- Harness design for long-running apps (2026-03-24): https://www.anthropic.com/engineering/harness-design-long-running-apps
- Effective context engineering (2025-09-29): https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents
- Building effective agents (2024-12-19): https://www.anthropic.com/engineering/building-effective-agents
- Context management (2025-09-29): https://claude.com/blog/context-management
- Measuring agent autonomy (2026-02-18): https://www.anthropic.com/research/measuring-agent-autonomy
- Codex exec plans: https://developers.openai.com/cookbook/articles/codex_exec_plans
- Long-horizon tasks with Codex: https://developers.openai.com/blog/run-long-horizon-tasks-with-codex
- Böckeler, SDD tools (2025-10-15, ikincil): https://www.martinfowler.com/articles/exploring-gen-ai/sdd-3-tools.html
- Pocock skills: https://github.com/mattpocock/skills
- obra/superpowers: https://github.com/obra/superpowers
- Anthropic skills (doc-coauthoring): https://github.com/anthropics/skills
- Dunlosky vd. (2013) özeti: https://www.sciencedaily.com/releases/2013/01/130110111734.htm
