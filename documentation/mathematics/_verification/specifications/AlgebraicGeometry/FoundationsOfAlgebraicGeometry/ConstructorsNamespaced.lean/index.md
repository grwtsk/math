# Verification target: Constructors Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a81aaf4b4e62285368bce04e7e98775eb744ca7",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Constructors/Variant8f05abb7a9cd978f5d14d95dedb9cc99180ca4a7c355954ff17ce17671c1202c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ConstructorsNamespaced.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ConstructorsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a81aaf4b4e62285368bce04e7e98775eb744ca7`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Constructors/Variant8f05abb7a9cd978f5d14d95dedb9cc99180ca4a7c355954ff17ce17671c1202c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Constructors/Variant8f05abb7a9cd978f5d14d95dedb9cc99180ca4a7c355954ff17ce17671c1202c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RingHomProperties` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AffineTargetMorphismProperty.diagonal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ConstructorsNamespaced.lean/declarations/affinetargetmorphismproperty-diagonal.md) | 54 | `declaration-track:ba63e2c93ff55cc31dd783c787625033776eab583c108747c5649c107ac0d37a` |
| 2 | `instance` | [AffineTargetMorphismProperty.diagonal_respectsIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ConstructorsNamespaced.lean/declarations/affinetargetmorphismproperty-diagonal-respectsiso.md) | 60 | `declaration-track:46cb7ff11e8233507ed9135827137cf55f1c1f623976f2246adb2b178bfce3eb` |
| 3 | `theorem` | [HasAffineProperty.diagonal_of_openCover](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ConstructorsNamespaced.lean/declarations/hasaffineproperty-diagonal-of-opencover.md) | 71 | `result-track:5d858c102b37e9fcaaef3ad3440d62baed8196d770f469580afaa75b22cb4ec8` |
| 4 | `theorem` | [HasAffineProperty.diagonal_of_openCover_diagonal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ConstructorsNamespaced.lean/declarations/hasaffineproperty-diagonal-of-opencover-diagonal.md) | 94 | `result-track:7930fcb4d903b9cbf4266ea4b5b721b3bf8b1cdf83953902c5fc0fba6a57a27a` |
| 5 | `theorem` | [HasAffineProperty.diagonal_of_diagonal_of_isPullback](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ConstructorsNamespaced.lean/declarations/hasaffineproperty-diagonal-of-diagonal-of-ispullback.md) | 102 | `result-track:8fd484f323c3ff9b0df705f9d6ebb0e058c5140ceac57a05a17123ff83c92b46` |
| 6 | `theorem` | [HasAffineProperty.diagonal_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ConstructorsNamespaced.lean/declarations/hasaffineproperty-diagonal-iff.md) | 118 | `result-track:1eec4d24eca065a6ab1b76267a10426d76ea030dfea446dbf5a2dce4f3d2b605` |
| 7 | `instance` | [HasAffineProperty.diagonal_affineProperty_isLocal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ConstructorsNamespaced.lean/declarations/hasaffineproperty-diagonal-affineproperty-islocal.md) | 130 | `declaration-track:5fe8d928994ceb971b65e9cd3a365d70f911d8d68f90d93ee952d5a7ad75e789` |
| 8 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ConstructorsNamespaced.lean/declarations/instance-source-edition-2.md) | 147 | `declaration-track:d9782ec634b8dd7d2a77ef7a1e36e6e26d0654baf12ace48f72f752235ba4973` |
| 9 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ConstructorsNamespaced.lean/declarations/instance.md) | 158 | `declaration-track:d308ebf69d077e55d001947bf9592b20fa1828cc6d5459af95009dcb20e97cc4` |
| 10 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ConstructorsNamespaced.lean/declarations/instance-source-edition-3.md) | 163 | `declaration-track:e958682834ef6c9f580b8d1ac843a3afacc075d447f9c90903151ddf2ccfdb56` |
| 11 | `theorem` | [universally_isLocalAtTarget](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ConstructorsNamespaced.lean/declarations/universally-islocalattarget.md) | 183 | `result-track:e483b6bb9dfc2fd290d26d718cbcd79ba57b832209f6fd78cfd6aad2359b0a46` |
| 12 | `lemma` | [universally_isLocalAtSource](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ConstructorsNamespaced.lean/declarations/universally-islocalatsource.md) | 203 | `result-track:135cd1d8c59cecd1056c6c856b9d14fa85cc33a3243a7dfb0309e4fd363003ba` |
| 13 | `def` | [topologically](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ConstructorsNamespaced.lean/declarations/topologically.md) | 225 | `declaration-track:b19612ea39aeb1d6a3eaa84da5bf30163e7a26a76afa26e17656b752587be255` |
| 14 | `lemma` | [topologically_isStableUnderComposition](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ConstructorsNamespaced.lean/declarations/topologically-isstableundercomposition.md) | 233 | `result-track:6ca665ae91da0d2829bd7275939b90901f0afa82ac7e32016b57bff977f6c294` |
| 15 | `lemma` | [topologically_iso_le](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ConstructorsNamespaced.lean/declarations/topologically-iso-le.md) | 243 | `result-track:9e008772fe49dcbbd6e03bbd5c820e2b9d7b479f606a31d0935690d1b5ad9144` |
| 16 | `lemma` | [topologically_respectsIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ConstructorsNamespaced.lean/declarations/topologically-respectsiso.md) | 252 | `result-track:1bda15049c66892a274445bb69266ac50d3428d3c696987b1631594d7f43fa01` |
| 17 | `lemma` | [topologically_isLocalAtTarget](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ConstructorsNamespaced.lean/declarations/topologically-islocalattarget-source-edition-2.md) | 263 | `result-track:cf36b04a3a0c1273065f4af259e3e107cda4c2ed496b74d375076b246807440c` |
| 18 | `lemma` | [topologically_isLocalAtTarget'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ConstructorsNamespaced.lean/declarations/topologically-islocalattarget.md) | 281 | `result-track:ac1baccf068ee59d9701d8f422e071e7eea23115c9a399e570b28b26152c97f5` |
| 19 | `lemma` | [topologically_isLocalAtSource](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ConstructorsNamespaced.lean/declarations/topologically-islocalatsource-source-edition-2.md) | 292 | `result-track:49e9850c289dbdbcea3e2993341da2d14e8aabcac0c0029d89d8f3cb45b2523f` |
| 20 | `lemma` | [topologically_isLocalAtSource'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ConstructorsNamespaced.lean/declarations/topologically-islocalatsource.md) | 307 | `result-track:4570ad858a436a55b5942f5768fe18edfb17033614735663c5ec13c26b5698d2` |
| 21 | `def` | [stalkwise](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ConstructorsNamespaced.lean/declarations/stalkwise.md) | 321 | `declaration-track:4f6c5914261ae1cc4beb91bc8e8efb3ccb07423007a1900fe3f5e6262f6708f9` |
| 22 | `lemma` | [stalkwise_respectsIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ConstructorsNamespaced.lean/declarations/stalkwise-respectsiso.md) | 330 | `result-track:46402d32425e71a4ed4ffc2b78960d8fd421434029b9ed52746316654d42e2de` |
| 23 | `lemma` | [stalkwiseIsLocalAtTarget_of_respectsIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ConstructorsNamespaced.lean/declarations/stalkwiseislocalattarget-of-respectsiso.md) | 344 | `result-track:5544fb49f8b94a2335c7b61401c6e34cc634a66c987b34832efd11c4adc73c4a` |
| 24 | `lemma` | [stalkwise_isLocalAtSource_of_respectsIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ConstructorsNamespaced.lean/declarations/stalkwise-islocalatsource-of-respectsiso.md) | 360 | `result-track:c5d542334838f52c8b8591c339d6f5e01e399da5e2b668608cdc5bb6dcf3188e` |
| 25 | `lemma` | [stalkwise_Spec_map_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ConstructorsNamespaced.lean/declarations/stalkwise-spec-map-iff.md) | 373 | `result-track:61f9f34376d92978112c047c8c975f618b03e857f38c988899fa20f241cf6e17` |
| 26 | `lemma` | [isStableUnderBaseChange_of_isStableUnderBaseChangeOnAffine_of_isLocalAtTarget](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ConstructorsNamespaced.lean/declarations/isstableunderbasechange-of-isstableunderbasechangeonaffine-of-islocalatt.md) | 389 | `result-track:4602c529380e2aaf939f73337a5cdfb87335c6faee27d796236422d897c2b761` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f42467d37c6c30ac79cc04a0d21bbeea082a99c54ff334ca8c76a2ac8bbcdf4d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/Constructors/Variant8f05abb7a9cd978f5d14d95dedb9cc99180ca4a7c355954ff17ce17671c1202c.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/Constructors/Variant8f05abb7a9cd978f5d14d95dedb9cc99180ca4a7c355954ff17ce17671c1202c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
