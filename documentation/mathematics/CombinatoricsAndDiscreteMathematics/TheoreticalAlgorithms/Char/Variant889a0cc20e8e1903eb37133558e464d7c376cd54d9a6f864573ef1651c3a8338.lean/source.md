# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Char.Variant889a0cc20e8e1903eb37133558e464d7c376cd54d9a6f864573ef1651c3a8338

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `60e9b36b8962dc765c29f15a181bf1fbc0bad955` · SHA-256 `889a0cc20e8e1903eb37133558e464d7c376cd54d9a6f864573ef1651c3a8338`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Batteries.Data.Char

/- Failing on nightly-2025-12-18
#guard Char.caseFoldAsciiOnly 'A' == 'a'
#guard Char.caseFoldAsciiOnly 'a' == 'a'
#guard Char.caseFoldAsciiOnly 'À' == 'À'
#guard Char.caseFoldAsciiOnly 'à' == 'à'
#guard Char.caseFoldAsciiOnly '$' == '$'

#guard Char.beqCaseInsensitiveAsciiOnly 'a' 'A' == true
#guard Char.beqCaseInsensitiveAsciiOnly 'a' 'a' == true
#guard Char.beqCaseInsensitiveAsciiOnly '$' '$' == true
#guard Char.beqCaseInsensitiveAsciiOnly 'a' 'b' == false
#guard Char.beqCaseInsensitiveAsciiOnly 'γ' 'Γ' == false
#guard Char.beqCaseInsensitiveAsciiOnly 'ä' 'Ä' == false

#guard Char.cmpCaseInsensitiveAsciiOnly 'a' 'A' == .eq
#guard Char.cmpCaseInsensitiveAsciiOnly 'a' 'a' == .eq
#guard Char.cmpCaseInsensitiveAsciiOnly '$' '$' == .eq
#guard Char.cmpCaseInsensitiveAsciiOnly 'a' 'b' == .lt
#guard Char.cmpCaseInsensitiveAsciiOnly 'γ' 'Γ' == .gt
#guard Char.cmpCaseInsensitiveAsciiOnly 'ä' 'Ä' == .gt
-/
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f20ed285987bbb6a7812fb25184fcd9cd8243becb73248885be0313437fb740d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variant889a0cc20e8e1903eb37133558e464d7c376cd54d9a6f864573ef1651c3a8338.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
