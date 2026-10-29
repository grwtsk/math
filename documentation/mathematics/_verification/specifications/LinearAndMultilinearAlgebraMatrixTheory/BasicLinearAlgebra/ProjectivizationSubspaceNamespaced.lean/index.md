# Verification target: Projectivization Subspace Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10dbb26d9f577b3bf0323bd5387dce68ea8a910a",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Subspace/Variant4cd15e458d978ed015affa64a76cb4d3583701f341718c7722574f7faa160a0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationSubspaceNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationSubspaceNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10dbb26d9f577b3bf0323bd5387dce68ea8a910a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Subspace/Variant4cd15e458d978ed015affa64a76cb4d3583701f341718c7722574f7faa160a0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Subspace/Variant4cd15e458d978ed015affa64a76cb4d3583701f341718c7722574f7faa160a0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Projectivization.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Subspace](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationSubspaceNamespaced.lean/declarations/subspace.md) | 51 | `declaration-track:2ca1054e2d370e3f47fd07526193bece43146fc32f874ef08118847291380a09` |
| 2 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationSubspaceNamespaced.lean/declarations/instance-source-edition-2.md) | 62 | `declaration-track:aa40d9df69ff2e6e03827d6aec3716199cdeb05d11385dcd301be4aff4c758a8` |
| 3 | `theorem` | [mem_carrier_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationSubspaceNamespaced.lean/declarations/mem-carrier-iff.md) | 70 | `result-track:2d780ea14417196797a0d811157c15598a5a142f8f9fecf661f21ec877e83de5` |
| 4 | `theorem` | [mem_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationSubspaceNamespaced.lean/declarations/mem-add.md) | 73 | `result-track:ee468d3388a34a2246e52fd15c92d57b02fa9f797b0525a87e48560357686461` |
| 5 | `inductive` | [spanCarrier](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationSubspaceNamespaced.lean/declarations/spancarrier.md) | 81 | `declaration-track:aca2fb3c883625b5ea4adb326c2ca73af83e10bf610f822395125026cef37073` |
| 6 | `def` | [span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationSubspaceNamespaced.lean/declarations/span.md) | 88 | `declaration-track:b11a1e2a2d4619494d0222b0d16e2ad4a373fab03ec7855d67da50bbbdd3d9b2` |
| 7 | `theorem` | [subset_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationSubspaceNamespaced.lean/declarations/subset-span.md) | 93 | `result-track:14943824f09e47296f0842e6d622fcdc21a37f323ff78c2064923ff16fdd8b66` |
| 8 | `def` | [gi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationSubspaceNamespaced.lean/declarations/gi.md) | 97 | `declaration-track:353394b23658c6f79e67e1969ff51fca3beacd7526ba5819cf685c09d6b1ab29` |
| 9 | `theorem` | [span_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationSubspaceNamespaced.lean/declarations/span-coe.md) | 110 | `result-track:93653e684d9f1bd54974a3aa740e8797c3ac23cf8b2d7806d48d924f70dc163a` |
| 10 | `instance` | [instInf](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationSubspaceNamespaced.lean/declarations/instinf.md) | 114 | `declaration-track:7d41a7e390cbd06e5ca070758ba0225369a2959422bf06465377df06ca2935e9` |
| 11 | `instance` | [instInfSet](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationSubspaceNamespaced.lean/declarations/instinfset.md) | 120 | `declaration-track:211fa2235bdd3cf28cc8910ff7c0e6579cb1201bbad581c2e3ecd50976d34206` |
| 12 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationSubspaceNamespaced.lean/declarations/instance.md) | 127 | `declaration-track:1e86e108769c2a7c6652de814e75332662a7777bc6e095b3f55bb4ba198239ca` |
| 13 | `instance` | [subspaceInhabited](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationSubspaceNamespaced.lean/declarations/subspaceinhabited.md) | 137 | `declaration-track:463cdbdbd6b676e90396fe66be9031999eee3f99f37dd6bf1556585af72f1a3e` |
| 14 | `theorem` | [span_empty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationSubspaceNamespaced.lean/declarations/span-empty.md) | 141 | `result-track:00cc33e04c77d72349b8ba86880d01cb9c55bd3c34a25451a83227965be58f3c` |
| 15 | `theorem` | [span_univ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationSubspaceNamespaced.lean/declarations/span-univ.md) | 145 | `result-track:01036ef1a6fc5e647f13052c58b5864347898f415c25208d62053ea3b1f2450f` |
| 16 | `theorem` | [span_le_subspace_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationSubspaceNamespaced.lean/declarations/span-le-subspace-iff.md) | 152 | `result-track:e77ad8059689d1e33e9bbe7d4ea423396ab7a5d599858d09c4fdbdd5523a3ad6` |
| 17 | `theorem` | [monotone_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationSubspaceNamespaced.lean/declarations/monotone-span.md) | 158 | `result-track:0b8c67b660c79e6e36d35e3a257c08fe958cc180a42229914597cd3420e090fb` |
| 18 | `lemma` | [span_le_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationSubspaceNamespaced.lean/declarations/span-le-span.md) | 162 | `result-track:5d1f0a91953a9b0fb2701c411d92e8d08fa2cc3f500a0cdc909bb928f1bca169` |
| 19 | `theorem` | [subset_span_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationSubspaceNamespaced.lean/declarations/subset-span-trans.md) | 164 | `result-track:1763f81909474c489c39556b28a6e8bc394fa7b9d0d70c9e2b64e2bd871781e7` |
| 20 | `theorem` | [span_union](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationSubspaceNamespaced.lean/declarations/span-union.md) | 169 | `result-track:222551c9fa12553695dead395e851db85e04232bc632ef83db85296d0b268b65` |
| 21 | `theorem` | [span_iUnion](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationSubspaceNamespaced.lean/declarations/span-iunion.md) | 174 | `result-track:22d4e3c29bf216517084dcfeae943c8461c02035a9a04c0ad88b3eaac946908a` |
| 22 | `theorem` | [sup_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationSubspaceNamespaced.lean/declarations/sup-span.md) | 179 | `result-track:5bef37124c792da904d3bfc868ec300f118e53b9e34461dde71cd00b6037f1df` |
| 23 | `theorem` | [span_sup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationSubspaceNamespaced.lean/declarations/span-sup.md) | 182 | `result-track:83cf73324721e5bea77bdd2c96afde2c33cdf2ba39c9f0bb5f7229d78de74b2a` |
| 24 | `theorem` | [mem_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationSubspaceNamespaced.lean/declarations/mem-span.md) | 187 | `result-track:26f4b52548a8eef69f94cdd8c7d7b093865d127544969eb83b3ea58552fc132f` |
| 25 | `theorem` | [span_eq_sInf](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationSubspaceNamespaced.lean/declarations/span-eq-sinf.md) | 194 | `result-track:c3d017c197c4c7837cf6e83f0f8bb9d0070bec3a5014761531861e3720d19139` |
| 26 | `theorem` | [span_eq_of_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationSubspaceNamespaced.lean/declarations/span-eq-of-le.md) | 205 | `result-track:5244185dc23a29c249a398a73ed7e331abf194e9565afd56e0a0c49d99d99742` |
| 27 | `theorem` | [span_eq_span_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationSubspaceNamespaced.lean/declarations/span-eq-span-iff.md) | 211 | `result-track:b709c8eaa236b458ddec5e78f9290bc204f722b7012e8fc3fd2d553ca7095c24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=77c2be962944c35d7154ded03577a1c60cfcb1a1efaa4b04cc47f9df9f64f898 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Subspace/Variant4cd15e458d978ed015affa64a76cb4d3583701f341718c7722574f7faa160a0b.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Subspace/Variant4cd15e458d978ed015affa64a76cb4d3583701f341718c7722574f7faa160a0b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
