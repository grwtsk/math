# Verification target: Big Operators Pi Namespaced Pi Eq Sum Univ

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ee7d4e5a0f3df81b4e038fcb7f30d5c5db00704",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant64ba8b7da1a8ff83fe992a36ba22d002ba3a65d0764da336fe6abea19a2d3d05.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPiEqSumUniv.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPiEqSumUniv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ee7d4e5a0f3df81b4e038fcb7f30d5c5db00704`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant64ba8b7da1a8ff83fe992a36ba22d002ba3a65d0764da336fe6abea19a2d3d05.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Pi/Variant64ba8b7da1a8ff83fe992a36ba22d002ba3a65d0764da336fe6abea19a2d3d05.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Piecewise` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.GroupWithZero.Finset` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Pi` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Indicator` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Pi` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Fold` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [list_prod_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPiEqSumUniv.lean/declarations/list-prod-apply.md) | 37 | `result-track:d27ed8e22342916e48600f4d6dc5e34d9ac82860e563dce2e641cbc10f69c519` |
| 2 | `theorem` | [multiset_prod_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPiEqSumUniv.lean/declarations/multiset-prod-apply.md) | 42 | `result-track:2886fb7a7083e2c634afb398d204b8cfaa8cba3a1a9ff2359be9806a43b4dc7d` |
| 3 | `theorem` | [Finset.prod_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPiEqSumUniv.lean/declarations/finset-prod-apply.md) | 49 | `result-track:06c778b0c882492a724686dcc0f2ca6fe430755d6eb8a5a0c8cfee527585f40f` |
| 4 | `theorem` | [Finset.prod_fn](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPiEqSumUniv.lean/declarations/finset-prod-fn.md) | 55 | `result-track:542e73ea5f2e54b049c3518a00c282f9ffdc985b22e38319cbf65085b9e9a8ba` |
| 5 | `theorem` | [Fintype.prod_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPiEqSumUniv.lean/declarations/fintype-prod-apply.md) | 60 | `result-track:9a9060d34ac6748cbbc4962322427618c3f942dbead6be213b20ba144dc6e9ac` |
| 6 | `theorem` | [prod_mk_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPiEqSumUniv.lean/declarations/prod-mk-prod.md) | 65 | `result-track:80b49364a0cc3bed0f26f4327cf5fe58f28d7917ccf8c22a64f3c0f827e1114b` |
| 7 | `theorem` | [pi_eq_sum_univ](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPiEqSumUniv.lean/declarations/pi-eq-sum-univ.md) | 71 | `result-track:8e89f3cb72837e6c3677434a21327271649155e26c8ba1c548fe715a6b80dd23` |
| 8 | `lemma` | [prod_indicator_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPiEqSumUniv.lean/declarations/prod-indicator-apply.md) | 79 | `result-track:53a7b9193de9f600737ba0660670db5b6749a3f795493bad8213fba4eead1ac5` |
| 9 | `lemma` | [prod_indicator](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPiEqSumUniv.lean/declarations/prod-indicator.md) | 90 | `result-track:193bb2e74e422a454aa1d65012327dc43e8b235dfb0cb9d42e996767f0e14a9e` |
| 10 | `lemma` | [prod_indicator_const_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPiEqSumUniv.lean/declarations/prod-indicator-const-apply.md) | 94 | `result-track:28b4944b4793539dd385cde8187bb3428cedc8b6fc77c0b134c5eaff998e316c` |
| 11 | `lemma` | [prod_indicator_const](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPiEqSumUniv.lean/declarations/prod-indicator-const.md) | 98 | `result-track:153b71c122f7ed6b9895b08c39f36c66462e66dbf2381d92a0ba2f2d05727bd6` |
| 12 | `theorem` | [Finset.univ_prod_mulSingle](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPiEqSumUniv.lean/declarations/finset-univ-prod-mulsingle.md) | 109 | `result-track:7a66ce21373136afce40e188d13c93e749b3cb76f1a398dab4fafc955d65aba7` |
| 13 | `theorem` | [MonoidHom.functions_ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPiEqSumUniv.lean/declarations/monoidhom-functions-ext.md) | 115 | `result-track:5ef340f71b11838dba7afeb79f281841bcc882111c4cf4fb8ce1742972a7438e` |
| 14 | `theorem` | [MonoidHom.functions_ext'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPiEqSumUniv.lean/declarations/monoidhom-functions-ext-source-edition-2.md) | 127 | `result-track:b84d9e14737febd4d81caeb8ccc8d73b2d01a64f177fcd3c13c0612b4fb3719f` |
| 15 | `theorem` | [RingHom.functions_ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPiEqSumUniv.lean/declarations/ringhom-functions-ext.md) | 141 | `result-track:e8801630d254b3a9003ac59a2313457722f93024507e31eb48ad244e5bc45f4b` |
| 16 | `theorem` | [fst_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPiEqSumUniv.lean/declarations/fst-prod.md) | 153 | `result-track:5a2618ae6baac28e4d4e913e6546f55f4b6fdc7fbc315e5882a5705767cd4e4c` |
| 17 | `theorem` | [snd_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPiEqSumUniv.lean/declarations/snd-prod.md) | 157 | `result-track:82e55ec34586a0ccbd406cc01b2c3cf911649d31d75a14672b4cb214ecd53103` |
| 18 | `def` | [Pi.monoidHomMulEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPiEqSumUniv.lean/declarations/pi-monoidhommulequiv.md) | 169 | `declaration-track:b7023f64b28c438bccd68734274324c3685eebec92d08ddb0143ad676dcc26b7` |
| 19 | `lemma` | [Pi.single_induction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPiEqSumUniv.lean/declarations/pi-single-induction.md) | 202 | `result-track:3a53de0a5734f3ee52c6785716d13c8d360ca30e9a09303404cd55d83bdb045b` |
| 20 | `lemma` | [Pi.mulSingle_induction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsPiNamespacedPiEqSumUniv.lean/declarations/pi-mulsingle-induction.md) | 210 | `result-track:54fa53271baefcd8df14a22d4cd94d23f31cd5310069c0a62f2ebea180bfc513` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fe1dbdebb45cd6b0e5e47e0fc3e5c335198f8b4b3f643edc279edf3c9dff6434 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant64ba8b7da1a8ff83fe992a36ba22d002ba3a65d0764da336fe6abea19a2d3d05.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Pi/Variant64ba8b7da1a8ff83fe992a36ba22d002ba3a65d0764da336fe6abea19a2d3d05.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
