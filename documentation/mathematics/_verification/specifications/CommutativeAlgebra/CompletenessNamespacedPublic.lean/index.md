# Verification target: Completeness Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04a63bf8866ef608f3fe04f0d99d5fa92c7044a4",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Completeness/Variantc0a7a269de44d4d24a57adae0529f19a5db160c021f97acf7040b1b71956e7b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/CompletenessNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/CompletenessNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04a63bf8866ef608f3fe04f0d99d5fa92c7044a4`.

Source path: `GRWTSK/Algebra/Completeness/Variantc0a7a269de44d4d24a57adae0529f19a5db160c021f97acf7040b1b71956e7b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Completeness/Variantc0a7a269de44d4d24a57adae0529f19a5db160c021f97acf7040b1b71956e7b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.AdicCompletion.Topology` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ofPowSMul](../../../../CommutativeAlgebra/CompletenessNamespacedPublic.lean/declarations/ofpowsmul.md) | 67 | `declaration-track:ba5d4d43b268fc9fd075d5d6c5075677dd75c5ac13aaa0ba29f1034ebc106e93` |
| 2 | `theorem` | [ofPowSMul_val_apply](../../../../CommutativeAlgebra/CompletenessNamespacedPublic.lean/declarations/ofpowsmul-val-apply.md) | 70 | `result-track:cb138679d7e9aa577a0e610d613022289658af7a1f76440d22694f03d01ab619` |
| 3 | `theorem` | [ofPowSMul_val_apply_eq_zero](../../../../CommutativeAlgebra/CompletenessNamespacedPublic.lean/declarations/ofpowsmul-val-apply-eq-zero.md) | 76 | `result-track:a5249dff2ea56843c96f924acb254ec62542fe9a05388fddb17eae3d13d61daf` |
| 4 | `theorem` | [ofPowSMul_injective](../../../../CommutativeAlgebra/CompletenessNamespacedPublic.lean/declarations/ofpowsmul-injective.md) | 82 | `result-track:0364ae0823e1964f7629f8e79c642f82c11c6ee9b97f8ef4bd82b0595b1282e3` |
| 5 | `lemma` | [ofValEqZeroAux_exists](../../../../CommutativeAlgebra/CompletenessNamespacedPublic.lean/declarations/ofvaleqzeroaux-exists.md) | 91 | `result-track:4a4044aca49864757c8944a9c86fdc5c09e11b13a97fca78e3776dd5e1dba7a8` |
| 6 | `def` | [ofValEqZeroAux](../../../../CommutativeAlgebra/CompletenessNamespacedPublic.lean/declarations/ofvaleqzeroaux.md) | 98 | `declaration-track:4ee64bd38889b09e8fae82ee7c7e4f0ffab27383d964c1ae26cba1a0ff38971c` |
| 7 | `lemma` | [ofValEqZeroAux_prop](../../../../CommutativeAlgebra/CompletenessNamespacedPublic.lean/declarations/ofvaleqzeroaux-prop.md) | 102 | `result-track:cfedeceaa35b29210fc4134d78433b6e46af5901ccf7887e0ba51ddc213a8741` |
| 8 | `def` | [ofValEqZero](../../../../CommutativeAlgebra/CompletenessNamespacedPublic.lean/declarations/ofvaleqzero.md) | 108 | `declaration-track:188b5b6dd259c5e6391541ea13f7871de77251f45b284eb96827b071f7b93ab3` |
| 9 | `theorem` | [ofPowSMul_ofValEqZero](../../../../CommutativeAlgebra/CompletenessNamespacedPublic.lean/declarations/ofpowsmul-ofvaleqzero.md) | 119 | `result-track:9848947f4760a011568d96179e911ec8cba659130d7664d2523b0286590cc27c` |
| 10 | `theorem` | [restrictScalars_range_ofPowSMul_eq_ker_eval](../../../../CommutativeAlgebra/CompletenessNamespacedPublic.lean/declarations/restrictscalars-range-ofpowsmul-eq-ker-eval.md) | 126 | `result-track:ee473113c997aeb3eff8f68b0a40da6979d09dcfa89870a884fbb3ed22ebb557` |
| 11 | `lemma` | [lsum_smul_comp_finsuppLEquivDirectSum_symm](../../../../CommutativeAlgebra/CompletenessNamespacedPublic.lean/declarations/lsum-smul-comp-finsupplequivdirectsum-symm.md) | 143 | `result-track:d9153b34a7d24532aff7160c3123102bdbc313abf17beac1b3d72abfd1b2d544` |
| 12 | `theorem` | [pow_smul_top_eq_ker_eval](../../../../CommutativeAlgebra/CompletenessNamespacedPublic.lean/declarations/pow-smul-top-eq-ker-eval.md) | 162 | `result-track:8ebced04413c0ea13a5b1c5825c94ab93a6228676fcc1af961b4f5a0802f7260` |
| 13 | `theorem` | [isAdicComplete](../../../../CommutativeAlgebra/CompletenessNamespacedPublic.lean/declarations/isadiccomplete.md) | 192 | `result-track:abdcb6c6681fae394eef90953db2bfaed2ed58689e70f0afeff00560cb88bc4c` |
| 14 | `lemma` | [ker_evalOneₐ_eq_map](../../../../CommutativeAlgebra/CompletenessNamespacedPublic.lean/declarations/ker-evalone-eq-map.md) | 206 | `result-track:c2e916d644195a97eab27095c74397bffd7f6a2c4d8c25b4e2c1f19827712ea4` |
| 15 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CompletenessNamespacedPublic.lean/declarations/instance.md) | 221 | `declaration-track:61bd2f74c10237392f3d35d1316a806bbf7d4a182b13dffb29a079f0eac788df` |
| 16 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CompletenessNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 236 | `declaration-track:fd6a913ce0be59d1622eb9b7f75935b78e17ecacdd8fc09757d730e673d7d678` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e7726fda9b772e9064801c3e1a0f1fd073537d09a4839ad62c3e65858c6966a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Completeness/Variantc0a7a269de44d4d24a57adae0529f19a5db160c021f97acf7040b1b71956e7b5.lean","GRWTSK/_verification/specifications/Algebra/Completeness/Variantc0a7a269de44d4d24a57adae0529f19a5db160c021f97acf7040b1b71956e7b5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
