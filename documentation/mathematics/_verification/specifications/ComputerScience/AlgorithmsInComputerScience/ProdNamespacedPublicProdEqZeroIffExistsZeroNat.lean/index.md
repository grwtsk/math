# Verification target: Prod Namespaced Public Prod Eq Zero Iff Exists Zero Nat

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e54a0e8018faecbbbd91177864b8dad96978194",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variant6629b089ea96ad84ff380efb0932a3dd91d2e45a8c327c985c5db07792026726.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ProdNamespacedPublicProdEqZeroIffExistsZeroNat.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ProdNamespacedPublicProdEqZeroIffExistsZeroNat.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e54a0e8018faecbbbd91177864b8dad96978194`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variant6629b089ea96ad84ff380efb0932a3dd91d2e45a8c327c985c5db07792026726.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variant6629b089ea96ad84ff380efb0932a3dd91d2e45a8c327c985c5db07792026726.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Lemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_eq_zero_iff_exists_zero_nat](../../../../../ComputerScience/AlgorithmsInComputerScience/ProdNamespacedPublicProdEqZeroIffExistsZeroNat.lean/declarations/prod-eq-zero-iff-exists-zero-nat.md) | 29 | `result-track:de7da6839a61c6109e56580ee566c4166068f65d3dc26548e8abc98aca6db4c1` |
| 2 | `theorem` | [prod_pos_iff_forall_pos_nat](../../../../../ComputerScience/AlgorithmsInComputerScience/ProdNamespacedPublicProdEqZeroIffExistsZeroNat.lean/declarations/prod-pos-iff-forall-pos-nat.md) | 35 | `result-track:b246f2db7698b435e54391e3c9d5c2908d424537e4c6493cd66b36d5494d4875` |
| 3 | `theorem` | [prod_replicate_nat](../../../../../ComputerScience/AlgorithmsInComputerScience/ProdNamespacedPublicProdEqZeroIffExistsZeroNat.lean/declarations/prod-replicate-nat.md) | 46 | `result-track:b7a8fcd07b9cbfc8f83cc9872633031162258707f57f56cb288611e28c90cf8b` |
| 4 | `theorem` | [prod_append_nat](../../../../../ComputerScience/AlgorithmsInComputerScience/ProdNamespacedPublicProdEqZeroIffExistsZeroNat.lean/declarations/prod-append-nat.md) | 49 | `result-track:75b907ea263c9e1ab3432d5dace06ba7ce232a2222596ab8fdaf0a5360757dce` |
| 5 | `theorem` | [prod_reverse_nat](../../../../../ComputerScience/AlgorithmsInComputerScience/ProdNamespacedPublicProdEqZeroIffExistsZeroNat.lean/declarations/prod-reverse-nat.md) | 52 | `result-track:33fee9f14fa4f103486f8e6f31e73b9d2079d86dc15c2d6cba8f6939ff5093f2` |
| 6 | `theorem` | [prod_eq_foldl_nat](../../../../../ComputerScience/AlgorithmsInComputerScience/ProdNamespacedPublicProdEqZeroIffExistsZeroNat.lean/declarations/prod-eq-foldl-nat.md) | 55 | `result-track:5fb29b9746f9db1b47edd0c0760908201f51a8b87ab2ade4687b5038e32c80db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ac1ccb143b0a6291d91e0e8d8d2edff29d111f47471da08bb89139abe97ce1fc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variant6629b089ea96ad84ff380efb0932a3dd91d2e45a8c327c985c5db07792026726.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variant6629b089ea96ad84ff380efb0932a3dd91d2e45a8c327c985c5db07792026726.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
