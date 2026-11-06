# Değerlendirme: alice-skills ve kaynaklar

Kaynaklar ve kararlar `survey.md` dosyasında. Bu rapor skill'lerin 0.1.1 sürümünü okuyarak yazıldı; hiçbir değişiklik henüz uygulanmadı ve test edilmedi.

## Özet
| Ölçüt | Durum |
|---|---|
| Kısalık | İyi. Toplam 1.697 kelime, en uzun `step` 626 kelime. Kaynakların sınırı 500 satır. |
| Gerekçeli talimat | İyi. Çoğu kuralın yanında nedeni var; büyük harf veya "MUST" yok. |
| Adım listesi yerine hedef | Çoğunlukla iyi. `step`'in dört adımı tek liste; kabul edilebilir. |
| Alandan bağımsızlık | **Zayıf.** Her skill'de yazılım varsayımı var. |
| Doğrulama ölçütü | **Eksik.** "Done means" doğrulamanın nasıl yapılacağını söylemiyor. |
| Taşınabilirlik | Frontmatter uyumlu; `/spec` gibi çağrı adları Claude Code'a özgü. |
| Tetiklenme | Ölçülmedi. |

## 1. Alandan bağımsızlık
Bu kelimeler ders çalışma gibi işlerde ya anlamsız ya yanıltıcı:

| Skill | Yazılım varsayımı | Nötr karşılığı |
|---|---|---|
| clarify | "what gets built", "done and committed" | "what gets made", "done and saved as a checkpoint" |
| survey | "this codebase", "needs building at all" | "what the project already has", "needs making at all" |
| spec | "build", "builder", "modules, schemas or files" | "make", "whoever does the work", "parts others depend on" |
| spec, step | `CLAUDE.md` | "the project's agent instructions" |
| step | "multi-session build", "git history", "code", "commit", "diff", "fixes that remove code" | "multi-session work", "the work's history", "the work", "checkpoint", "what changed since the last check", "fixes that make the work smaller" |
| steer | "build", "building resumes" | "work", "work resumes" |
| README | "coding agents" | "agents" |

Genel kalan iyi ifadeler: "Exercise the result the way its user would", "lose or corrupt what the user trusts it with". Bunlar ders için de doğrudan geçerli.

## 2. Doğrulama ölçütü
Kaynakların ortak uyarısı: doğrulama yöntemi belirtilmezse ajan kendi kendini onaylıyor. Ders çalışmada "konuyu bitirdim" gerçek bir doğrulama değil; gecikmeli ve ipucusuz hatırlama doğrulamadır. Kodda ise testler.

Öneri: Yöntemi skill'e değil spec'e koymak.
- **spec** şablonunda: "Done means: each with how it will be checked, as something observed rather than judged."
- **step** üçüncü adımında: "Check it the way "done means" says, and the way its user would."

## 3. Taşınabilirlik
- Frontmatter yalnızca `name` ve `description` kullanıyor; ortak standarda uygun.
- Skill'ler birbirini `/spec`, `/step`, `/survey`, `/steer` diye çağırıyor. Codex'te çağrı `$name` ile yapılıyor. Öneri: metinde "the spec skill" gibi adlarla anmak. README'deki akış şeması `/` ile kalabilir, çünkü orası Claude Code kullanıcısına yönelik.

## 4. Kesinleşmemiş ve test edilecek noktalar
- **Kendi kendini doğrulama:** Claude'un güncel istem rehberi, eski istemlerden kalan öz-doğrulama talimatlarını Opus 5'te kaldırmayı öneriyor. `step`'in "Orient" adımındaki "facts are claims to confirm" satırı bu türden olabilir; ilk testte skill'siz ajan da aynısını yaptı. Silmeden önce uzun yol testinde bakılmalı. Bağımsız kontrol bu önerinin kapsamında değil, çünkü ayrı bir ajan.
- **Tetiklenme:** Açıklamalarımız "Use when ..." biçiminde ve kaynakların önerisine uygun. Ama yakın vakalarla hiç ölçülmedi. Özellikle `clarify` belirsiz her istekte, `step` ise "devam et" gibi her mesajda tetiklenebilir.
- **Uzun yol:** `spec` ve `step`'in son hali, compact sonrası davranış ve ölçek kontrolü hiç denenmedi.

## 5. Değiştirmeyi önermediklerim
- **Durma koşulları:** OpenAI ajanın sormadan karar vermesini, Anthropic ise durup sormasını destekliyor. Bizim sınırlı durak listemiz ikisinin arasında; kanıt olmadan değiştirmezdim.
- **Kayıt yapısı:** OpenAI'nin "living plan" bölümleri (ilerleme, sürprizler, karar günlüğü) bizim `next.md` ve `journal.md` yapımıza çok yakın.
- **Alan dosyaları:** Anthropic alan ayrıntısını ayrı dosyalara koymayı öneriyor, ama bu "alana özel komut yazmadan" niyetine ters.
- **Yeni skill:** Kaynaklarda bizde eksik olan bir aşama görmedim.

## Test planı (ortak anlayıştan sonra)
1. **Tetiklenme:** Yaklaşık 20 sorgu; her skill için tetiklenmesi gereken ve gerekmeyen yakın vakalar. Ölçü: doğru tetiklenme oranı.
2. **Uzun yol:** Kod dışı tek bir proje, örneğin bir sınava çalışma sistemi; simüle kullanıcıyla `clarify`'dan bitişe kadar. Ölçü: doğrulama yöntemi spec'te tanımlandı mı, ajan yazılım terimleriyle mi düşündü, `step` gerçekten devretti mi, kullanıcı ne kadar bölündü.
