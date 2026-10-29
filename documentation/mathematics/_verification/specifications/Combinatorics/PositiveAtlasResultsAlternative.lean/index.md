# Verification target: Positive Atlas Results Alternative

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c86b987e8a271d04dba08d78f8625dcb81c8f679",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant9a74cfe7be2ccdc8cbadb700af99a4f56a1177be76646151077a0c2c435a7233.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/PositiveAtlasResultsAlternative.lean/index.md) · [Full source](../../../../Combinatorics/PositiveAtlasResultsAlternative.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c86b987e8a271d04dba08d78f8625dcb81c8f679`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant9a74cfe7be2ccdc8cbadb700af99a4f56a1177be76646151077a0c2c435a7233.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant9a74cfe7be2ccdc8cbadb700af99a4f56a1177be76646151077a0c2c435a7233.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.ProvenanceProjection` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteFibreWeights](../../../../Combinatorics/PositiveAtlasResultsAlternative.lean/declarations/finitefibreweights.md) | 20 | `declaration-track:de90100d0442f3bd48d9dd2547f15002cf1d54fd90774924dc4f69fcfa10400a` |
| 2 | `def` | [mass](../../../../Combinatorics/PositiveAtlasResultsAlternative.lean/declarations/mass.md) | 33 | `declaration-track:3503658f5e36764fd45bba8e05d3ccb64d7574caa9b1a15c84b9e0c14e6260de` |
| 3 | `theorem` | [mass_pos](../../../../Combinatorics/PositiveAtlasResultsAlternative.lean/declarations/mass-pos.md) | 35 | `result-track:d775537a4f1e0751e7643f72a5b88cfe2de3308a4738cb78589d621ecd34d4ef` |
| 4 | `theorem` | [mass_ne_zero](../../../../Combinatorics/PositiveAtlasResultsAlternative.lean/declarations/mass-ne-zero.md) | 38 | `result-track:bf5cc23e63ecf150a49508b89c268099f600d32940e80cbad3baf970660e52fa` |
| 5 | `def` | [mean](../../../../Combinatorics/PositiveAtlasResultsAlternative.lean/declarations/mean.md) | 42 | `declaration-track:aaca30a3d1e7fe10a4c318d96c735b8c756f2d2979da79b594965ceea9fac866` |
| 6 | `def` | [FibreConstant](../../../../Combinatorics/PositiveAtlasResultsAlternative.lean/declarations/fibreconstant.md) | 46 | `declaration-track:6e129ea6b40f887ee560eae6f82ea2726eeae6d83cc2894b847048a6ed929772` |
| 7 | `theorem` | [mass_mul_mean](../../../../Combinatorics/PositiveAtlasResultsAlternative.lean/declarations/mass-mul-mean.md) | 48 | `result-track:c1c851acf1319f1385f49b1e16389e8d98f657a1580772631e65519d405516f4` |
| 8 | `theorem` | [mean_constant](../../../../Combinatorics/PositiveAtlasResultsAlternative.lean/declarations/mean-constant.md) | 52 | `result-track:25117fd6ef320af768c8116a669d7f2a974390ae08211ea59be84f6e98a54b66` |
| 9 | `theorem` | [mean_add](../../../../Combinatorics/PositiveAtlasResultsAlternative.lean/declarations/mean-add.md) | 58 | `result-track:098e82ed313c76f1762910354d5962b49e6371e2dd6be273b7804eb2fb531621` |
| 10 | `theorem` | [mean_smul](../../../../Combinatorics/PositiveAtlasResultsAlternative.lean/declarations/mean-smul.md) | 63 | `result-track:2e094ae9845c0c35ee7ed6c4d897e802a872da8ccd5c08f09a6f4d4a16c49645` |
| 11 | `def` | [averaging](../../../../Combinatorics/PositiveAtlasResultsAlternative.lean/declarations/averaging.md) | 72 | `declaration-track:9b38c8aec69e719c92c03fcb439a181b4b798164689932200d435ddd20c116e0` |
| 12 | `theorem` | [averaging_apply](../../../../Combinatorics/PositiveAtlasResultsAlternative.lean/declarations/averaging-apply.md) | 80 | `result-track:2b9c78e8e5b8ea58adf111b9981a33de86b8bcca363ef48d6e8d63286c520780` |
| 13 | `theorem` | [averaging_fibreConstant](../../../../Combinatorics/PositiveAtlasResultsAlternative.lean/declarations/averaging-fibreconstant.md) | 84 | `result-track:75a14322789e686ceb5f950f7175e8312e039c60d09e8a234bc9b91d6d2ed0ab` |
| 14 | `theorem` | [averaging_eq_self](../../../../Combinatorics/PositiveAtlasResultsAlternative.lean/declarations/averaging-eq-self.md) | 87 | `result-track:24201bbcf2abdb576de7b9ae34d780bcb72f7384a09aa1533bf0f25a68515a3f` |
| 15 | `theorem` | [averaging_eq_self_iff](../../../../Combinatorics/PositiveAtlasResultsAlternative.lean/declarations/averaging-eq-self-iff.md) | 95 | `result-track:9a6fec6a9f5c5da1676088bbf53b77b4ffcff4085bd3081ac0edb2496fff5b47` |
| 16 | `theorem` | [averaging_idempotent](../../../../Combinatorics/PositiveAtlasResultsAlternative.lean/declarations/averaging-idempotent.md) | 101 | `result-track:1bf023eeb1cbcaf78c7939b6c8fdff03bf864c472200b1568d7cf0495c8abfa8` |
| 17 | `theorem` | [weighted_residual_sum](../../../../Combinatorics/PositiveAtlasResultsAlternative.lean/declarations/weighted-residual-sum.md) | 105 | `result-track:d1aa28fc8d75e6b1c93a570a4a5e4de0dc3af66586934a7be527817e3ac97c89` |
| 18 | `def` | [positiveForm](../../../../Combinatorics/PositiveAtlasResultsAlternative.lean/declarations/positiveform.md) | 116 | `declaration-track:c4855d3cf8e603dcf568eed41c0529445408fcb5add8bce09d3b2eff8acd620d` |
| 19 | `theorem` | [fibreConstant_orthogonal_residual](../../../../Combinatorics/PositiveAtlasResultsAlternative.lean/declarations/fibreconstant-orthogonal-residual.md) | 136 | `result-track:715b60859f7da97841b4086ae0fab756db805619627d125c177fd7a68c16c45d` |
| 20 | `def` | [projector](../../../../Combinatorics/PositiveAtlasResultsAlternative.lean/declarations/projector.md) | 148 | `declaration-track:41feba5d71cbbe1c770ea3f035ed21e2c0f37510c5a2e04a6a0890da0eae14e7` |
| 21 | `theorem` | [form_eq_zero_iff](../../../../Combinatorics/PositiveAtlasResultsAlternative.lean/declarations/form-eq-zero-iff.md) | 154 | `result-track:abb0971d3625c65a3dd6771fb9de31005f96ecd92d81ed9c39df0e9b3a6ab32f` |
| 22 | `theorem` | [quadratic_decomposition](../../../../Combinatorics/PositiveAtlasResultsAlternative.lean/declarations/quadratic-decomposition.md) | 169 | `result-track:acf597eb14beee07a127c69004fef5e732c94c768e085a3e650e19d163371365` |
| 23 | `theorem` | [averaging_contraction](../../../../Combinatorics/PositiveAtlasResultsAlternative.lean/declarations/averaging-contraction.md) | 175 | `result-track:06efaeff374441f83e5d3824f3b1dd349a1ca81683ff097b11e864a0cededf96` |
| 24 | `theorem` | [residual_zero_iff](../../../../Combinatorics/PositiveAtlasResultsAlternative.lean/declarations/residual-zero-iff.md) | 181 | `result-track:ed65cc4ba853eec9d2278a2482e922437217c1f86dc924a90a927da337f42dd6` |
| 25 | `theorem` | [averaging_self_adjoint](../../../../Combinatorics/PositiveAtlasResultsAlternative.lean/declarations/averaging-self-adjoint.md) | 187 | `result-track:d272c590fdb7380721d9d1f3ad2f8add4361f95549697d7b957f29715385fe76` |
| 26 | `theorem` | [approximation_decomposition](../../../../Combinatorics/PositiveAtlasResultsAlternative.lean/declarations/approximation-decomposition.md) | 203 | `result-track:0e02e9415327876c50fa61a21b59d871ac078645dd3a040484aba47c4de1bb24` |
| 27 | `theorem` | [averaging_minimizes](../../../../Combinatorics/PositiveAtlasResultsAlternative.lean/declarations/averaging-minimizes.md) | 214 | `result-track:19ad21ba96a5502bb23532ef1a1b60b0a5fd912452594ad1bd0f014f9a9393a5` |
| 28 | `theorem` | [minimal_error_iff](../../../../Combinatorics/PositiveAtlasResultsAlternative.lean/declarations/minimal-error-iff.md) | 223 | `result-track:828127b178278d6db26abd5f8ebd81a23dbc3c878fec2eeff65b07b897d26ee8` |
| 29 | `theorem` | [fibreConstant_iff_factors](../../../../Combinatorics/PositiveAtlasResultsAlternative.lean/declarations/fibreconstant-iff-factors.md) | 238 | `result-track:7e2270649ab68bb488bdbce5aef05206685fddcf3ae4d1e56168748397a51130` |
| 30 | `theorem` | [averaging_coarser](../../../../Combinatorics/PositiveAtlasResultsAlternative.lean/declarations/averaging-coarser.md) | 247 | `result-track:bcd282bb9224ee2fa3dc13203fa06f2a8a5f07f9a768c40ae116c5e05fe062de` |
| 31 | `theorem` | [coarser_averaging](../../../../Combinatorics/PositiveAtlasResultsAlternative.lean/declarations/coarser-averaging.md) | 254 | `result-track:aa0f3bc449ee3ca45e9f9e9484d9d9fb39a9b0fb71bb2717bdd334d448580955` |
| 32 | `theorem` | [coarser_error_monotone](../../../../Combinatorics/PositiveAtlasResultsAlternative.lean/declarations/coarser-error-monotone.md) | 270 | `result-track:e4230a9077e8bff79a62edabf93a1fcdea1a2443f1bc8adf5db9b48c0559c92c` |
| 33 | `def` | [unequalWeights](../../../../Combinatorics/PositiveAtlasResultsAlternative.lean/declarations/unequalweights.md) | 286 | `declaration-track:48c52a0d291dee9f9790e36cd61480b8c55e8ed12557f2ba84f043b780370f04` |
| 34 | `def` | [varying](../../../../Combinatorics/PositiveAtlasResultsAlternative.lean/declarations/varying.md) | 291 | `declaration-track:6bd6094d2a32f5e4305e3fcc8860fc5dcbd7d48cbf34f405c63163a037c93fb3` |
| 35 | `theorem` | [unequal_average](../../../../Combinatorics/PositiveAtlasResultsAlternative.lean/declarations/unequal-average.md) | 294 | `result-track:eca946fad859f63bed54761b1ae6bd3e9b9088c5a3e86b693550b3f4e00d77d7` |
| 36 | `theorem` | [unequal_residual_energy](../../../../Combinatorics/PositiveAtlasResultsAlternative.lean/declarations/unequal-residual-energy.md) | 300 | `result-track:94ef8ed835aa518851e933c8daa26f616b90724a3e1b5419bf8f0798b770ec3e` |
| 37 | `theorem` | [varying_not_fixed](../../../../Combinatorics/PositiveAtlasResultsAlternative.lean/declarations/varying-not-fixed.md) | 308 | `result-track:dc06a8c7c5b124125d007281a353642dabb91b3bfe8cf4d7063c66913eb15e60` |
| 38 | `theorem` | [singleton_fibres_retain](../../../../Combinatorics/PositiveAtlasResultsAlternative.lean/declarations/singleton-fibres-retain.md) | 315 | `result-track:5d2e60c5bff6797c2cc28b3074506b00664ba8753a3041197c232efd5fa08ed7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ac48edd18133b80940e452a6d4066b6b805d6d4460076894b34ff49ab142374b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant9a74cfe7be2ccdc8cbadb700af99a4f56a1177be76646151077a0c2c435a7233.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variant9a74cfe7be2ccdc8cbadb700af99a4f56a1177be76646151077a0c2c435a7233.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
