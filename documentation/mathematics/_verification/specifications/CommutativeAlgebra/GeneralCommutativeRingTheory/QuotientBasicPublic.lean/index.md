# Verification target: Quotient Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20a0ad5682f627918b51e72b4c698c9ed9e49cde",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Varianta187e3f7ca24aedd960683c29e0d4bd5e3419fa3abf98d332cfcd55860849d76.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/QuotientBasicPublic.lean/index.md) · [Full source](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/QuotientBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20a0ad5682f627918b51e72b4c698c9ed9e49cde`.

Source path: `GRWTSK/Algebra/Basic/Varianta187e3f7ca24aedd960683c29e0d4bd5e3419fa3abf98d332cfcd55860849d76.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Varianta187e3f7ca24aedd960683c29e0d4bd5e3419fa3abf98d332cfcd55860849d76.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mk_span_range](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/QuotientBasicPublic.lean/declarations/mk-span-range.md) | 38 | `result-track:8666ef18eaf90d13365b3de0a5d6af1afb99f357cfa0f5b57e108b998234ed43` |
| 2 | `theorem` | [zero_eq_one_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/QuotientBasicPublic.lean/declarations/zero-eq-one-iff.md) | 45 | `result-track:2c11780f4af07476267ef8363ca8876543e8754ce960c3982623c9e0588ac012` |
| 3 | `theorem` | [zero_ne_one_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/QuotientBasicPublic.lean/declarations/zero-ne-one-iff.md) | 48 | `result-track:fff7f95802c6e299518c2afa5244c45e6aa45415de7c86cc6aa4ba8b2ee42a53` |
| 4 | `lemma` | [subsingleton_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/QuotientBasicPublic.lean/declarations/subsingleton-iff.md) | 51 | `result-track:f9b8f0e9791d94bc0b27e97e17ae696a1212f7256908f944472256825aa6f832` |
| 5 | `lemma` | [nontrivial_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/QuotientBasicPublic.lean/declarations/nontrivial-iff.md) | 54 | `result-track:e36877a6eb2bb7b4bee90a88835b04bb310647a0006a5e87d4ca053936aef312` |
| 6 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/QuotientBasicPublic.lean/declarations/instance-source-edition-2.md) | 57 | `declaration-track:4467e736d1c113f27a31376f0ef7435999eeb1c7d1ebca72debe0af88f77f1be` |
| 7 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/QuotientBasicPublic.lean/declarations/instance.md) | 63 | `declaration-track:1e76cbf1cf2f873978a5544179bf25884999524068ff55753eff82faf243bffd` |
| 8 | `instance` | [smulCommClass](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/QuotientBasicPublic.lean/declarations/smulcommclass.md) | 67 | `declaration-track:6ba5f97adf742745df12b75a69b7b0b582045f702f36d907d8916a18db02894f` |
| 9 | `instance` | [smulCommClass'](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/QuotientBasicPublic.lean/declarations/smulcommclass-source-edition-2.md) | 71 | `declaration-track:705f3262d029509e13d76167db933dd50ba4ca99b3820e64d56e9c669b34a284` |
| 10 | `theorem` | [eq_zero_iff_dvd](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/QuotientBasicPublic.lean/declarations/eq-zero-iff-dvd.md) | 75 | `result-track:34ca3cb3b18e51c2188cfef36e87b7d1118a3af52a43967e49f0d4385930a110` |
| 11 | `lemma` | [mk_singleton_self](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/QuotientBasicPublic.lean/declarations/mk-singleton-self.md) | 80 | `result-track:c6c44c42edd289cf81b9e0ef44f6c7ea56eab281bd3f95e06af3d5bababc1782` |
| 12 | `instance` | [noZeroDivisors](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/QuotientBasicPublic.lean/declarations/nozerodivisors.md) | 85 | `declaration-track:dbcd267c98d0548629d1519315a77107542f192f2c7c12bd7fcb3533c5bc102f` |
| 13 | `instance` | [isDomain](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/QuotientBasicPublic.lean/declarations/isdomain.md) | 90 | `declaration-track:69d0f99b8692e18fbf12203ae3644a5fc4b99d8867bec807499b285d05a2f9d9` |
| 14 | `theorem` | [isDomain_iff_prime](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/QuotientBasicPublic.lean/declarations/isdomain-iff-prime.md) | 94 | `result-track:8c8dcc3c28a2dc083f762eba157e3556b86fd65d8fb1cb3fc5e81cc9a8ff7187` |
| 15 | `theorem` | [exists_inv](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/QuotientBasicPublic.lean/declarations/exists-inv.md) | 104 | `result-track:ca6c9939fc988db8fc8c82c396a6e5c67d8e89689fe7aa70c170cfc81c41367b` |
| 16 | `abbrev` | [groupWithZero](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/QuotientBasicPublic.lean/declarations/groupwithzero.md) | 119 | `declaration-track:161a1e268cc6a8b1acbcf19538cd33425411bedb3bd93e9a82fa0524d8d117bb` |
| 17 | `abbrev` | [divisionRing](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/QuotientBasicPublic.lean/declarations/divisionring.md) | 132 | `declaration-track:fa23843dff2f038cd797d53c4ee028082dd54b2c531f12d1d2d5a3340c5c32e2` |
| 18 | `abbrev` | [field](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/QuotientBasicPublic.lean/declarations/field.md) | 145 | `declaration-track:f28e0ec9a2a30db99b76c2d9161442047716a5a0a01d24ce8a6f35ac7bb36cbb` |
| 19 | `theorem` | [maximal_of_isField](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/QuotientBasicPublic.lean/declarations/maximal-of-isfield.md) | 151 | `result-track:0e83920ad0d1736f8e9a3592c63af1f978fe04a4db1a82c6749dee156ac2e897` |
| 20 | `theorem` | [maximal_ideal_iff_isField_quotient](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/QuotientBasicPublic.lean/declarations/maximal-ideal-iff-isfield-quotient.md) | 164 | `result-track:b161d46dcc021edb9fa5f763a10beb4dd11f265841328d6b8e702e8edfb01b94` |
| 21 | `instance` | [modulePi](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/QuotientBasicPublic.lean/declarations/modulepi.md) | 176 | `declaration-track:0c63633c37f0f697cfc3d85a10abc135ae1c1405b39bded00a0fc6f9e6aac8bc` |
| 22 | `def` | [piQuotEquiv](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/QuotientBasicPublic.lean/declarations/piquotequiv.md) | 193 | `declaration-track:d7b581d0cbdf5dc2f18b92fb3d9021f3e4d82a26879fc76bb85fdcee7ca0af19` |
| 23 | `theorem` | [map_pi](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/QuotientBasicPublic.lean/declarations/map-pi.md) | 206 | `result-track:f8d193407b6f0bc762f1b9f349d0ff13f2826ce4f246c63c6bfed7ac8f8708c7` |
| 24 | `lemma` | [univ_eq_iUnion_image_add](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/QuotientBasicPublic.lean/declarations/univ-eq-iunion-image-add.md) | 218 | `result-track:12c87269a27b03e1b0168a67bf29178376195d80962f773d07dc55c11afbaf33` |
| 25 | `lemma` | [finite_iff_ideal_quotient](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/QuotientBasicPublic.lean/declarations/finite-iff-ideal-quotient.md) | 223 | `result-track:b38ce3a0be41d68bce09929c681ffa701f79d0217fec7a4676c4c06e70347bcb` |
| 26 | `lemma` | [Finite.of_ideal_quotient](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/QuotientBasicPublic.lean/declarations/finite-of-ideal-quotient.md) | 226 | `result-track:ecc1d0a9505e2894029fb5bcd3d441ea785b94f36f102797296ddb1a4c6ba6b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8519c530f32c9aac146c652ece53f695e7d1e57b3856be275d7a1456b0e23683 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Varianta187e3f7ca24aedd960683c29e0d4bd5e3419fa3abf98d332cfcd55860849d76.lean","GRWTSK/_verification/specifications/Algebra/Basic/Varianta187e3f7ca24aedd960683c29e0d4bd5e3419fa3abf98d332cfcd55860849d76.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
