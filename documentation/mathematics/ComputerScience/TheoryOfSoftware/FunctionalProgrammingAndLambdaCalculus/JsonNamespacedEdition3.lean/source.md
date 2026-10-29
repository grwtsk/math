# Json Namespaced Edition3 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1272333980e4526470db10e8d831491566b556f9` · SHA-256 `5220eed1156a4a670151cca5d9c15b8c499c625e1450153700881f92a8090a69`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Json.Variantf63d7fbcdec6f24d9a3e42303bface7687917917818e980a67ebf84b158bb7d7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f63d7fbcdec6f24d9a3e42303bface7687917917818e980a67ebf84b158bb7d7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Json.Variantf63d7fbcdec6f24d9a3e42303bface7687917917818e980a67ebf84b158bb7d7","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"f63d7fbcdec6f24d9a3e42303bface7687917917818e980a67ebf84b158bb7d7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Data/Json.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
 Copyright (c) 2022 E.W.Ayers. All rights reserved.
 Released under Apache 2.0 license as described in the file LICENSE.
 Authors: E.W.Ayers, Wojciech Nawrocki
-/
import Std.Lean.Json
import Lean.Syntax

/-!
# JSON-like syntax for Lean.

Now you can write

```lean
open Std.Json

#eval json% {
  hello : "world",
  cheese : ["edam", "cheddar", {kind : "spicy", rank : 100.2}],
  lemonCount : 100e30,
  isCool : true,
  isBug : null,
  lookACalc: $(23 + 54 * 2)
}
```
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Json.Variantf63d7fbcdec6f24d9a3e42303bface7687917917818e980a67ebf84b158bb7d7

namespace Std.Json
open Lean

/-- Json syntactic category -/
declare_syntax_cat jso (behavior := symbol)
/-- Json null value syntax. -/
syntax "null" : jso
/-- Json true value syntax. -/
syntax "true" : jso
/-- Json false value syntax. -/
syntax "false" : jso
/-- Json string syntax. -/
syntax str : jso
/-- Json number negation syntax for ordinary numbers. -/
syntax "-"? num : jso
/-- Json number negation syntax for scientific numbers. -/
syntax "-"? scientific : jso
/-- Json array syntax. -/
syntax "[" jso,* "]" : jso
/-- Json identifier syntax. -/
syntax jsoIdent := ident <|> str
/-- Json key/value syntax. -/
syntax jsoField := jsoIdent ": " jso
/-- Json object syntax. -/
syntax "{" jsoField,* "}" : jso
/-- Allows to use Json syntax in a Lean file. -/
syntax "json% " jso  : term


macro_rules
  | `(json% null)           => `(Lean.Json.null)
  | `(json% true)           => `(Lean.Json.bool Bool.true)
  | `(json% false)          => `(Lean.Json.bool Bool.false)
  | `(json% $n:str)         => `(Lean.Json.str $n)
  | `(json% $n:num)         => `(Lean.Json.num $n)
  | `(json% $n:scientific)  => `(Lean.Json.num $n)
  | `(json% -$n:num)        => `(Lean.Json.num (-$n))
  | `(json% -$n:scientific) => `(Lean.Json.num (-$n))
  | `(json% [$[$xs],*])     => `(Lean.Json.arr #[$[json% $xs],*])
  | `(json% {$[$ks:jsoIdent : $vs:jso],*}) => do
    let ks : Array (TSyntax `term) ← ks.mapM fun
      | `(jsoIdent| $k:ident) => pure (k.getId |> toString |> quote)
      | `(jsoIdent| $k:str)   => pure k
      | _                     => Macro.throwUnsupported
    `(Lean.Json.mkObj [$[($ks, json% $vs)],*])
  | `(json% $stx)           =>
    if stx.raw.isAntiquot then
      let stx := ⟨stx.raw.getAntiquotTerm⟩
      `(Lean.toJson $stx)
    else
      Macro.throwUnsupported

end Std.Json
````

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3bf489a6fd4f18bfb4474ed42a37ef22dca4670b79f3b95e4bb987f783377bd8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Json/Variant46eceefbc8fa9ce0cc09acf0d441f4327eddf02d480ad57ff86465be6bdd35ae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
