# Organisation logos

`index.html` looks for an SVG (or PNG — change the extension in the `src`) here for each
organisation. **If the file is missing, the page falls back to a lettered mark**, so the
layout never breaks and nothing needs editing in the HTML.

Expected filenames:

| File | Organisation | Fallback |
|---|---|---|
| `iiap.svg`     | Institute for Informatics and Automation Problems, NAS RA | IIAP |
| `jamie.svg`    | Jamie: AI Fitness Coach | J |
| `inferaim.svg` | Inferaim | IN |
| `vmware.svg`   | VMware by Broadcom | VM |
| `ufar.svg`     | French University in Armenia (UFAR) | UFAR |
| `aua.svg`      | American University of Armenia | AUA |

Drop a file in with the matching name and it appears automatically on next load.

**Sizing:** rendered at 44×44 with 6px padding and `object-fit: contain`, so square or
near-square marks work best. A wide wordmark will letterbox and look small — prefer the
logomark/icon over the full wordmark where a company offers both.

**A note on sourcing:** take logos from the organisation's own brand or press-kit page
rather than an image search, so you get the official current mark at proper resolution.
Company logos are trademarks; using them to describe where you actually worked is normal
practice on a CV, but don't restyle or recolour them.
