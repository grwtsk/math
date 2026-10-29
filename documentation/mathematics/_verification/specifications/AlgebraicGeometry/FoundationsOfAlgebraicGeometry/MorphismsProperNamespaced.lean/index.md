# Verification target: Morphisms Proper Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "baeafbdbce3482df261820be04145682b95db171",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Proper/Variant050d321b1ed8481fba1579a5265ec41075adb56480ed6e337eaaafb88e59817d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsProperNamespaced.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsProperNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `baeafbdbce3482df261820be04145682b95db171`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Proper/Variant050d321b1ed8481fba1579a5265ec41075adb56480ed6e337eaaafb88e59817d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Proper/Variant050d321b1ed8481fba1579a5265ec41075adb56480ed6e337eaaafb88e59817d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.Separated` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.Finite` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsProper](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsProperNamespaced.lean/declarations/isproper.md) | 46 | `declaration-track:969eff5d12ffb81236ab3e1cd582e2382c1e3d966bdca1a580647566b493c0ad` |
| 2 | `lemma` | [isProper_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsProperNamespaced.lean/declarations/isproper-eq.md) | 48 | `result-track:6fd69c9093dfe3b50b652dbfa17bbce3c1b8af7cdda713f6db2d3e7188995936` |
| 3 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsProperNamespaced.lean/declarations/instance-source-edition-5.md) | 56 | `declaration-track:83a48f9d44d8d2a763ae13c40bb6786037af5e780c2c0d470c1afb1ca2fd0e39` |
| 4 | `instance` | [stableUnderComposition](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsProperNamespaced.lean/declarations/stableundercomposition.md) | 60 | `declaration-track:8baf11f46c4b104ea5e6015a349db326f2a4a75bdec0139c775c8dd91f0bbd68` |
| 5 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsProperNamespaced.lean/declarations/instance-source-edition-2.md) | 64 | `declaration-track:15fb4f8f5f1a970da32bad0433ed84febcbacbd81b7417bbdb55ae847e77e250` |
| 6 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsProperNamespaced.lean/declarations/instance-source-edition-3.md) | 68 | `declaration-track:1e03cf7ec020e3c3c6f9c87beaeaa95ca958612cc7715f56886e006f499938d2` |
| 7 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsProperNamespaced.lean/declarations/instance.md) | 70 | `declaration-track:097cced96af259ad3997d2c6feea3cc79769183a0792c96fffa3471ae9ab3870` |
| 8 | `instance` | [isStableUnderBaseChange](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsProperNamespaced.lean/declarations/isstableunderbasechange.md) | 72 | `declaration-track:3f839ff82e8e43ebd3c270a2413b8c20eb93d1e8b232709e882487362e613a1b` |
| 9 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsProperNamespaced.lean/declarations/instance-source-edition-4.md) | 76 | `declaration-track:4840d69e8887013f0324f4550a57194ae816ef4efb07a02129c70992ed68443a` |
| 10 | `lemma` | [IsFinite.eq_isProper_inf_isAffineHom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsProperNamespaced.lean/declarations/isfinite-eq-isproper-inf-isaffinehom.md) | 82 | `result-track:7a4eeca7ef7a99ae6f9819bba83d5e13d3df6118eea26feb742177b719ab78c9` |
| 11 | `lemma` | [IsFinite.iff_isProper_and_isAffineHom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsProperNamespaced.lean/declarations/isfinite-iff-isproper-and-isaffinehom.md) | 90 | `result-track:45d0d3df9699b8cdc6b958f1311070391e5d832368d70f93ca67882e71ff7910` |
| 12 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsProperNamespaced.lean/declarations/instance-source-edition-6.md) | 95 | `declaration-track:ce9247190a66dc69c92751c16c6aab2ab33ae17a047096186e23d42f15d32d22` |
| 13 | `lemma` | [UniversallyClosed.of_comp_of_isSeparated](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsProperNamespaced.lean/declarations/universallyclosed-of-comp-of-isseparated.md) | 99 | `result-track:ca5d6b036916140454a1a95c38f79c0e8a2617d87bba52894bd018981daaf1c3` |
| 14 | `lemma` | [IsProper.of_comp_of_isSeparated](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsProperNamespaced.lean/declarations/isproper-of-comp-of-isseparated.md) | 106 | `result-track:98ef0263a194b4b951502cb465c12890e6b609f43605d81f323cb3a334b829a7` |
| 15 | `theorem` | [isIntegral_appTop_of_universallyClosed](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsProperNamespaced.lean/declarations/isintegral-apptop-of-universallyclosed.md) | 118 | `result-track:5a7db5dc40edea600cd72d7a4431f4f1d19f13ab226b1f8d89dd169bafa6b415` |
| 16 | `theorem` | [isField_of_universallyClosed](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsProperNamespaced.lean/declarations/isfield-of-universallyclosed.md) | 130 | `result-track:450d49edb1f3e96c7259e970fd994abef2b53962e41b0619dd211ed841b9ce69` |
| 17 | `theorem` | [finite_appTop_of_universallyClosed](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsProperNamespaced.lean/declarations/finite-apptop-of-universallyclosed.md) | 141 | `result-track:68603d4b6bb3f06fa08652f5792e0438f610bb91a9db7f7e8af85587d6b5afd3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0abfb73d88399b021bd481559faf3f84379d7b657d538ff66f40e243bc00da3b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/Proper/Variant050d321b1ed8481fba1579a5265ec41075adb56480ed6e337eaaafb88e59817d.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/Proper/Variant050d321b1ed8481fba1579a5265ec41075adb56480ed6e337eaaafb88e59817d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
