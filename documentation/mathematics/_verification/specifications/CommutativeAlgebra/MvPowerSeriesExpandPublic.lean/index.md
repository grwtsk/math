# Verification target: Mv Power Series Expand Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20426c63f715fb65b633153f6b046fdca3288ef4",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant9bfe313fc0e2cfd741c954a4cbbb6a3266755d7f9e237268e543a8afae635b02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/MvPowerSeriesExpandPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/MvPowerSeriesExpandPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20426c63f715fb65b633153f6b046fdca3288ef4`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant9bfe313fc0e2cfd741c954a4cbbb6a3266755d7f9e237268e543a8afae635b02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Expand/Variant9bfe313fc0e2cfd741c954a4cbbb6a3266755d7f9e237268e543a8afae635b02.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [expand](../../../../CommutativeAlgebra/MvPowerSeriesExpandPublic.lean/declarations/expand.md) | 35 | `declaration-track:471638da25d59f4acb4501f6dfd264208f8555f2106affa7024b9aabb0572b8e` |
| 2 | `theorem` | [expand_C](../../../../CommutativeAlgebra/MvPowerSeriesExpandPublic.lean/declarations/expand-c.md) | 38 | `result-track:c0201d30c4de765cb7fc7d03acc356bed9577d88b380c7d49c278612e48cbf3e` |
| 3 | `theorem` | [expand_X](../../../../CommutativeAlgebra/MvPowerSeriesExpandPublic.lean/declarations/expand-x.md) | 43 | `result-track:ff5c53dc6687a4d068815946a26cdb106f682add59b988ea57b8f4d908a3d7d0` |
| 4 | `theorem` | [expand_monomial](../../../../CommutativeAlgebra/MvPowerSeriesExpandPublic.lean/declarations/expand-monomial.md) | 47 | `result-track:b4bc886cf20bc01b08ae2336b83eb7045d547b230fae3e5e9cddfd7c263229bc` |
| 5 | `theorem` | [expand_one](../../../../CommutativeAlgebra/MvPowerSeriesExpandPublic.lean/declarations/expand-one.md) | 55 | `result-track:cb8f978bed0e957ee0c916de3ccb8e48b9c8e1a0b67f816fc2db858fe85e8b70` |
| 6 | `theorem` | [expand_one_apply](../../../../CommutativeAlgebra/MvPowerSeriesExpandPublic.lean/declarations/expand-one-apply.md) | 59 | `result-track:965af0b66dd9c68c65e099a6bf8e36a82a95d4196927215956d1be6af3747768` |
| 7 | `theorem` | [map_expand](../../../../CommutativeAlgebra/MvPowerSeriesExpandPublic.lean/declarations/map-expand.md) | 62 | `result-track:ea3f8e222a6f2b7924775c1a96dbcb1ca6b2ca43948c3d0051c0952df38929d5` |
| 8 | `theorem` | [HasSubst.expand](../../../../CommutativeAlgebra/MvPowerSeriesExpandPublic.lean/declarations/hassubst-expand.md) | 68 | `result-track:31402df2b340af93983ff8ddbfaf58fa7d8c9fe18c16042b737e97658ea5da2e` |
| 9 | `theorem` | [expand_comp_substAlgHom](../../../../CommutativeAlgebra/MvPowerSeriesExpandPublic.lean/declarations/expand-comp-substalghom.md) | 71 | `result-track:f475ad7d3ed9b94501a5d717a33425fe1f116778fc21aa6bfe8a6376f567800d` |
| 10 | `theorem` | [expand_substAlgHom](../../../../CommutativeAlgebra/MvPowerSeriesExpandPublic.lean/declarations/expand-substalghom.md) | 76 | `result-track:d7b264ddf6c57c0d89e2697b3d814aad9af981f996929ed870dae1ce57516ce0` |
| 11 | `theorem` | [expand_subst](../../../../CommutativeAlgebra/MvPowerSeriesExpandPublic.lean/declarations/expand-subst.md) | 80 | `result-track:2f747a89799feba0a3db22fb5bd04d0db92131d1b99344c049b46b7a239a348a` |
| 12 | `theorem` | [expand_mul_eq_comp](../../../../CommutativeAlgebra/MvPowerSeriesExpandPublic.lean/declarations/expand-mul-eq-comp.md) | 92 | `result-track:b54bc28734c9918aaf4238f06afdb60fe92a7213df4d36db3c27308a8dc93fbd` |
| 13 | `theorem` | [expand_mul](../../../../CommutativeAlgebra/MvPowerSeriesExpandPublic.lean/declarations/expand-mul.md) | 98 | `result-track:ec69e8699f580b5df4a0a1d53ebdf8dbb0c8d783349bec62a9ca54861150fa06` |
| 14 | `theorem` | [coeff_expand_smul](../../../../CommutativeAlgebra/MvPowerSeriesExpandPublic.lean/declarations/coeff-expand-smul.md) | 103 | `result-track:7c51efbba5a0cb70cfdb95c4ad337c7f09706b5af11e3bad3369e6ebf7a75683` |
| 15 | `theorem` | [constantCoeff_expand](../../../../CommutativeAlgebra/MvPowerSeriesExpandPublic.lean/declarations/constantcoeff-expand.md) | 116 | `result-track:99e9e89e91bb97dae1f8fe13335ec23bfabce2ca9b5b139b25e24e9edc1f4162` |
| 16 | `theorem` | [coeff_expand_of_not_dvd](../../../../CommutativeAlgebra/MvPowerSeriesExpandPublic.lean/declarations/coeff-expand-of-not-dvd.md) | 121 | `result-track:caa2f97021a24462bb6398b25b27c93d79047afb10bd80442bff9ec467328d22` |
| 17 | `theorem` | [support_expand_subset](../../../../CommutativeAlgebra/MvPowerSeriesExpandPublic.lean/declarations/support-expand-subset.md) | 140 | `result-track:953c4f6d14960409d97f8803c8014a951c42cd25dbacccec34fb9c783c120520` |
| 18 | `theorem` | [support_expand](../../../../CommutativeAlgebra/MvPowerSeriesExpandPublic.lean/declarations/support-expand.md) | 151 | `result-track:40758a80880b74249d9a2b54849c35f050df9ed7e79d5ac3a3841ee0020588d8` |
| 19 | `theorem` | [order_expand](../../../../CommutativeAlgebra/MvPowerSeriesExpandPublic.lean/declarations/order-expand.md) | 162 | `result-track:35742b1d732e0dd4abc6be4df07935d08a596cbf3376c981ce82dc72e404c21a` |
| 20 | `theorem` | [expand_eq_expand](../../../../CommutativeAlgebra/MvPowerSeriesExpandPublic.lean/declarations/expand-eq-expand.md) | 186 | `result-track:a42a7078ed2f494e8fdf247dbc6ca47db6fbe7e46ce9052ee5c7a3d55f671c18` |
| 21 | `theorem` | [trunc'_expand](../../../../CommutativeAlgebra/MvPowerSeriesExpandPublic.lean/declarations/trunc-expand.md) | 197 | `result-track:d09caa1de38349ba33487d5e3ece8e3c93feae25d578246b4b63b1e6f9ef717a` |
| 22 | `theorem` | [trunc'_expand_trunc'](../../../../CommutativeAlgebra/MvPowerSeriesExpandPublic.lean/declarations/trunc-expand-trunc.md) | 222 | `result-track:d00f016519c7b7facf24ce8ac2b051570c5cbafbbd3818eb60c8c08612be6320` |
| 23 | `theorem` | [map_frobenius_expand](../../../../CommutativeAlgebra/MvPowerSeriesExpandPublic.lean/declarations/map-frobenius-expand.md) | 233 | `result-track:14955ed502ac6ab608ac1a4f85aa531ad57d985e8f214b132f74a31f5939d142` |
| 24 | `theorem` | [map_iterateFrobenius_expand](../../../../CommutativeAlgebra/MvPowerSeriesExpandPublic.lean/declarations/map-iteratefrobenius-expand.md) | 248 | `result-track:ff8d716709fe9cac5aa56e72afa63edbab6a90f124a757b6f67beb006c502aab` |
| 25 | `theorem` | [_root_.FiniteField.MvPowerSeries.expand_card](../../../../CommutativeAlgebra/MvPowerSeriesExpandPublic.lean/declarations/root-finitefield-mvpowerseries-expand-card.md) | 258 | `result-track:a0c8a130187f9f296269e920f0c02e6a677506859c984af3d935cb5cd63cf3db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b537396231061477c9562058e92dfdc312af265fc151e50530086c38aa4ce56d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant9bfe313fc0e2cfd741c954a4cbbb6a3266755d7f9e237268e543a8afae635b02.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Expand/Variant9bfe313fc0e2cfd741c954a4cbbb6a3266755d7f9e237268e543a8afae635b02.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
