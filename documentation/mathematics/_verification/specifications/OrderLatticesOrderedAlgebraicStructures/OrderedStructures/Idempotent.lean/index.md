# Verification target: Idempotent

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b414eef859e3fcbb65e0fdfb9cb41654787ba2b",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Idempotent/Variant3f894b6f1d70f22ed021b2b1af13af7e6257d899c2bf27100ad995c59f1aaa1d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Idempotent.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Idempotent.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b414eef859e3fcbb65e0fdfb9cb41654787ba2b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Idempotent/Variant3f894b6f1d70f22ed021b2b1af13af7e6257d899c2bf27100ad995c59f1aaa1d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Idempotent/Variant3f894b6f1d70f22ed021b2b1af13af7e6257d899c2bf27100ad995c59f1aaa1d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Idempotent` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.BooleanAlgebra` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Idempotent.lean/declarations/instance-source-edition-6.md) | 22 | `declaration-track:9160d1e4a11b6155106d1fcffb578cede745e6b7f252798e311d0554b9d8ee1e` |
| 2 | `lemma` | [eq_of_mul_eq_add_eq_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Idempotent.lean/declarations/eq-of-mul-eq-add-eq-one.md) | 26 | `result-track:1eca182701d77fb5bfac8d695a32808e080491638fee7f751b40f2225c4887c0` |
| 3 | `lemma` | [mul_eq_zero_add_eq_one_ext_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Idempotent.lean/declarations/mul-eq-zero-add-eq-one-ext-left.md) | 37 | `result-track:75fabe1e6c3a23f08e7bd4d791581cc2bda8efb328868f5334b60b69a062b83c` |
| 4 | `lemma` | [mul_eq_zero_add_eq_one_ext_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Idempotent.lean/declarations/mul-eq-zero-add-eq-one-ext-right.md) | 42 | `result-track:56aeee2efab04b019b67dff866c34f834514597164487fe1024da97f1c75b4cf` |
| 5 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Idempotent.lean/declarations/instance-source-edition-9.md) | 48 | `declaration-track:ef3de11cd5b8407b772936587a9652df71297b7a6a75701ee2627cad136fbd62` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Idempotent.lean/declarations/instance-source-edition-8.md) | 54 | `declaration-track:a7a5c3f49459651ab551a92ca27af28a49f52955b437bf96f661f173673df87e` |
| 7 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Idempotent.lean/declarations/instance-source-edition-7.md) | 66 | `declaration-track:a3717f9fd3f52af7d55cc5587dceaf1a480ce6e9f412231c3881d1fb8fcd59df` |
| 8 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Idempotent.lean/declarations/instance-source-edition-5.md) | 91 | `declaration-track:81282cee8e7d7b86b03b58f577d565f61523c03c9cd32d01cfaa54d2a003f3fc` |
| 9 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Idempotent.lean/declarations/instance-source-edition-4.md) | 101 | `declaration-track:5aaeba8a42a4a92b4568cc1ff442c608b0074e54da85782752f041e42eb77f73` |
| 10 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Idempotent.lean/declarations/instance.md) | 105 | `declaration-track:36d5679c076ebd2bef0efb12024c9b6211566a4973e790d419b8c583d4698575` |
| 11 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Idempotent.lean/declarations/instance-source-edition-3.md) | 113 | `declaration-track:4e761dc5633199bdf4a107e798981fde458adb2a919190f38fcf96c653df2e31` |
| 12 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Idempotent.lean/declarations/instance-source-edition-2.md) | 122 | `declaration-track:460404f4f012a2a280cfe56e49b61a96549e5aa9d185e0b30325bba3f510a386` |
| 13 | `def` | [OrderIso.isIdempotentElemMulZeroAddOne](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/Idempotent.lean/declarations/orderiso-isidempotentelemmulzeroaddone.md) | 141 | `declaration-track:e893403c0859baa89f2914c34e84b7a9ac886521f55b51a9dae80f1191f522e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f4f3d33d375f2295583618f17ef94a36a9f773729f6d1c6009601b4779bc4b90 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Idempotent/Variant3f894b6f1d70f22ed021b2b1af13af7e6257d899c2bf27100ad995c59f1aaa1d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Idempotent/Variant3f894b6f1d70f22ed021b2b1af13af7e6257d899c2bf27100ad995c59f1aaa1d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
