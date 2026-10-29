# Verification target: Fun Like Equiv Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97fc1c79b2f4a637739dbb73d7003a0b35638ff2",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant08dfb2d2fb9f9a522e9e2d9f9fc6b64a5cef7c290dee61fe239403cce195d20a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeEquivNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeEquivNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97fc1c79b2f4a637739dbb73d7003a0b35638ff2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant08dfb2d2fb9f9a522e9e2d9f9fc6b64a5cef7c290dee61fe239403cce195d20a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant08dfb2d2fb9f9a522e9e2d9f9fc6b64a5cef7c290dee61fe239403cce195d20a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.FunLike.Embedding` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [EquivLike](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeEquivNamespaced.lean/declarations/equivlike.md) | 144 | `declaration-track:012faa11c8a11841499863e70f7566b823f5ce0d741345fb455ff76bb46a17a1` |
| 2 | `theorem` | [inv_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeEquivNamespaced.lean/declarations/inv-injective.md) | 162 | `result-track:af59af3d32e732e99e5db00323bccdefae9135292d5f166a46597b662ad6e23e` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeEquivNamespaced.lean/declarations/instance.md) | 165 | `declaration-track:8a4b2586f3c69341b3983cf08fb0c094c0310ba7f75c6c718145d8f12799a65e` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeEquivNamespaced.lean/declarations/instance-source-edition-2.md) | 170 | `declaration-track:a1e9b0f2321a2bbf3150985ba854d1b107f963b8687cd7e53b4dc6a003212b4a` |
| 5 | `theorem` | [injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeEquivNamespaced.lean/declarations/injective.md) | 173 | `result-track:a0c921d6cfa502429eaaf68b08ce794ffb02ff2a61371f93495a5d3a77b45a05` |
| 6 | `theorem` | [surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeEquivNamespaced.lean/declarations/surjective.md) | 176 | `result-track:4b7f260d91644fd1b94e2bbae9a3d475ee3dc144fedb77b49b379925cadbf3b1` |
| 7 | `theorem` | [bijective](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeEquivNamespaced.lean/declarations/bijective.md) | 179 | `result-track:dc43ba6733213d3e352833de0b3e8980d7e59adf1555c63a3b32f2c8d75c826f` |
| 8 | `theorem` | [apply_eq_iff_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeEquivNamespaced.lean/declarations/apply-eq-iff-eq.md) | 182 | `result-track:f0c8c3dbbc11c8a60170d607190d49233fb38587fa5bebd935c969a1278a00c7` |
| 9 | `theorem` | [injective_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeEquivNamespaced.lean/declarations/injective-comp.md) | 186 | `result-track:5ed8bd3e87e116325a007e1fc84b5a31ea89219d3c0388ef7f286f2954378d8f` |
| 10 | `theorem` | [surjective_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeEquivNamespaced.lean/declarations/surjective-comp.md) | 190 | `result-track:6947b52455b5bdd4cf377ea9e6b47db05039888f1c01d64ebb5cbef304f4ee49` |
| 11 | `theorem` | [bijective_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeEquivNamespaced.lean/declarations/bijective-comp.md) | 194 | `result-track:a4460deddf2a660480d746dbec8b855d7ccbf759cea5542223358d4c9fe49316` |
| 12 | `theorem` | [inv_apply_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeEquivNamespaced.lean/declarations/inv-apply-apply.md) | 204 | `result-track:6ebbe111a500c12456feb6b1d8163fc88fecc27723dc418c9ec55ddd66301b05` |
| 13 | `theorem` | [apply_inv_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeEquivNamespaced.lean/declarations/apply-inv-apply.md) | 214 | `result-track:8c21ed62bbe177ee8d04d48295b2fe6ff337318b10ae8fbb6e2b2569d4c6429f` |
| 14 | `lemma` | [inv_apply_eq_iff_eq_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeEquivNamespaced.lean/declarations/inv-apply-eq-iff-eq-apply.md) | 217 | `result-track:d913b47e17d241137ef2db6c4de59409fa9bff88d73938786b59202a81e0f488` |
| 15 | `theorem` | [comp_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeEquivNamespaced.lean/declarations/comp-injective.md) | 220 | `result-track:4a901b97c29e476fa695c4cd1462d4689b86a22eb8866cc6abbb0c2543972501` |
| 16 | `theorem` | [comp_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeEquivNamespaced.lean/declarations/comp-surjective.md) | 224 | `result-track:9ee0c92258f85374a7b411b4f99f54828bc37b601ec26a76876435f8f229110f` |
| 17 | `theorem` | [comp_bijective](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeEquivNamespaced.lean/declarations/comp-bijective.md) | 228 | `result-track:c76679a9b48d001b2b65e0c6707ab217582ac5aac567cdbed23250388a21f625` |
| 18 | `lemma` | [subsingleton_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeEquivNamespaced.lean/declarations/subsingleton-dom.md) | 232 | `result-track:bd17ef4ca47019a27d2430f2ae39cb0af7aec2433cd7a0b63a8db9db8adbab52` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f94f1636a56c35b41a9d5b59bf429aa8a603ab4aa61af3f6d1fb6427398f1b51 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant08dfb2d2fb9f9a522e9e2d9f9fc6b64a5cef7c290dee61fe239403cce195d20a.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant08dfb2d2fb9f9a522e9e2d9f9fc6b64a5cef7c290dee61fe239403cce195d20a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
