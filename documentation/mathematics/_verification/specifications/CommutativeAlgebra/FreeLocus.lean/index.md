# Verification target: Free Locus

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09df796a546fd52a47915f38d9059c781eca5f41",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FreeLocus/Variantc01ba596102ee8e679f5e413350f20890233f98856d7ed23b9088ceb23f1d6b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/FreeLocus.lean/index.md) · [Full source](../../../../CommutativeAlgebra/FreeLocus.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09df796a546fd52a47915f38d9059c781eca5f41`.

Source path: `GRWTSK/Algebra/FreeLocus/Variantc01ba596102ee8e679f5e413350f20890233f98856d7ed23b9088ceb23f1d6b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FreeLocus/Variantc01ba596102ee8e679f5e413350f20890233f98856d7ed23b9088ceb23f1d6b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Flat.Stability` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalProperties.Projective` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.Module` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Free` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.LocalizationLocalization` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Topology` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyConstant.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Free` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [freeLocus](../../../../CommutativeAlgebra/FreeLocus.lean/declarations/freelocus.md) | 42 | `declaration-track:0d60abb355faff61a0e8efd0187e307f496ee4b01a6e75cd570171010f4de570` |
| 2 | `lemma` | [mem_freeLocus](../../../../CommutativeAlgebra/FreeLocus.lean/declarations/mem-freelocus.md) | 47 | `result-track:44244ed708b4a3cc81098f1c8ee08f990c4def6871447f25fbbeaf7fc994e2dc` |
| 3 | `lemma` | [mem_freeLocus_of_isLocalization](../../../../CommutativeAlgebra/FreeLocus.lean/declarations/mem-freelocus-of-islocalization.md) | 52 | `result-track:ce41ae41643f5bb4f6030637d7ff2d0063951431b78bb79f449786db59558558` |
| 4 | `lemma` | [mem_freeLocus_iff_tensor](../../../../CommutativeAlgebra/FreeLocus.lean/declarations/mem-freelocus-iff-tensor.md) | 71 | `result-track:087821d7af5173af250bd8e65435d5495883e0b4b0e0f4e1c2cb460e94f2b95f` |
| 5 | `lemma` | [freeLocus_congr](../../../../CommutativeAlgebra/FreeLocus.lean/declarations/freelocus-congr.md) | 78 | `result-track:72ca4303a4af85a6c67d072925152d4f3fba1fea83bafa62b6d170d1092191e2` |
| 6 | `lemma` | [comap_freeLocus_le](../../../../CommutativeAlgebra/FreeLocus.lean/declarations/comap-freelocus-le.md) | 85 | `result-track:d24ca5dddc69801175608f987013d3e360b6d86b628f7e36afc7bec7d1d93eb0` |
| 7 | `lemma` | [freeLocus_localization](../../../../CommutativeAlgebra/FreeLocus.lean/declarations/freelocus-localization.md) | 101 | `result-track:7e592e3a0b4424197a7fa803b73821c644b2aeafa0751eb6ec5ccba3df7e96f6` |
| 8 | `lemma` | [freeLocus_eq_univ_iff](../../../../CommutativeAlgebra/FreeLocus.lean/declarations/freelocus-eq-univ-iff.md) | 152 | `result-track:4b0bb4f648da448cbdb805d4d50c207280b53a20bfe59aaece2e6e669c535849` |
| 9 | `lemma` | [freeLocus_eq_univ](../../../../CommutativeAlgebra/FreeLocus.lean/declarations/freelocus-eq-univ.md) | 158 | `result-track:c426c6d6914d18fd57669a170113eac80dd1bd1b8e412d5325350aee2eee4651` |
| 10 | `lemma` | [basicOpen_subset_freeLocus_iff](../../../../CommutativeAlgebra/FreeLocus.lean/declarations/basicopen-subset-freelocus-iff.md) | 163 | `result-track:22fe46d373ef260c169950b09a724892eb490bd2908889d4e72fa5dfcbe80913` |
| 11 | `lemma` | [isOpen_freeLocus](../../../../CommutativeAlgebra/FreeLocus.lean/declarations/isopen-freelocus.md) | 169 | `result-track:36c0d513b975440d10f202d4b6f56375e3f00bc3bd8d405c2382110709a3208e` |
| 12 | `def` | [rankAtStalk](../../../../CommutativeAlgebra/FreeLocus.lean/declarations/rankatstalk.md) | 181 | `declaration-track:acb382f98ad42eb5bd12e311349f8a207a54f869520208260fe29d620779d95f` |
| 13 | `lemma` | [isLocallyConstant_rankAtStalk_freeLocus](../../../../CommutativeAlgebra/FreeLocus.lean/declarations/islocallyconstant-rankatstalk-freelocus.md) | 184 | `result-track:d524972dba2138694f63e7724cda4df84ffafaed523779e0ebd718e1a86c5f9f` |
| 14 | `lemma` | [isLocallyConstant_rankAtStalk](../../../../CommutativeAlgebra/FreeLocus.lean/declarations/islocallyconstant-rankatstalk.md) | 222 | `result-track:52cbf518ba95d2b43a86d32a7f5d0eb4f34719e238d03410694cb3e3e8cdf6ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c5d2ffbca5fe65aa9a75232bbcd8b80559cba23282c49cef7dcc7376f1ddb320 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/FreeLocus/Variantc01ba596102ee8e679f5e413350f20890233f98856d7ed23b9088ceb23f1d6b9.lean","GRWTSK/_verification/specifications/Algebra/FreeLocus/Variantc01ba596102ee8e679f5e413350f20890233f98856d7ed23b9088ceb23f1d6b9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
