# Verification target: Norm Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0dba63ceaa3b5743984904c9983471d8d10b279d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Norm/Variantc5a1d8df27f8ca9cb9424232c3355c7123a15e2efc56498f2eb1f26c81bcf663.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionsOfAComplexVariable/NormNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionsOfAComplexVariable/NormNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0dba63ceaa3b5743984904c9983471d8d10b279d`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Norm/Variantc5a1d8df27f8ca9cb9424232c3355c7123a15e2efc56498f2eb1f26c81bcf663.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Norm/Variantc5a1d8df27f8ca9cb9424232c3355c7123a15e2efc56498f2eb1f26c81bcf663.lean.json)

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
| 1 | `theorem` | [neg_norm_le_re](../../../../FunctionsOfAComplexVariable/NormNamespacedPublic.lean/declarations/neg-norm-le-re.md) | 28 | `result-track:cf9648dcd03f45eab081205ca53afbe0797e9f3ef9eeb7e1e75466eeb1bbba18` |
| 2 | `lemma` | [norm_sub_one_le_one_add_norm](../../../../FunctionsOfAComplexVariable/NormNamespacedPublic.lean/declarations/norm-sub-one-le-one-add-norm.md) | 32 | `result-track:1de64104cceacb2a3381c7e2a282e0e80e38331d70cb175605c960110f784352` |
| 3 | `lemma` | [norm_one_sub_le_one_add_norm](../../../../FunctionsOfAComplexVariable/NormNamespacedPublic.lean/declarations/norm-one-sub-le-one-add-norm.md) | 37 | `result-track:8429fe04f77788ae601bbb29d3bf554c95116a4ced1c03c84b22ac923411d3e5` |
| 4 | `lemma` | [one_le_norm_one_sub_of_norm_gt_three](../../../../FunctionsOfAComplexVariable/NormNamespacedPublic.lean/declarations/one-le-norm-one-sub-of-norm-gt-three.md) | 43 | `result-track:80086302ce5aa0c5ca4661aa413316f4e06651f77c8223955bed2b8c39546daa` |
| 5 | `lemma` | [norm_inv_pow_le_one_of_one_le_norm](../../../../FunctionsOfAComplexVariable/NormNamespacedPublic.lean/declarations/norm-inv-pow-le-one-of-one-le-norm.md) | 52 | `result-track:020079d166403d5b101776238073d672ff4a65de40a0c143bac3b953e56fe08b` |
| 6 | `lemma` | [one_sub_ne_one_of_norm_pos](../../../../FunctionsOfAComplexVariable/NormNamespacedPublic.lean/declarations/one-sub-ne-one-of-norm-pos.md) | 64 | `result-track:d95081bdb36a1be76fb7b106b05c22faf14baa535a16e778548d27ca5e42812d` |
| 7 | `lemma` | [ne_neg_nat_of_re_pos](../../../../FunctionsOfAComplexVariable/NormNamespacedPublic.lean/declarations/ne-neg-nat-of-re-pos.md) | 69 | `result-track:fa2a3465a08aa9865f58c4a286960eba93738a488818de1c6518b32e86a3085d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b2a620fe56fd3de248a7787ab498f6260d09b87d81542ac2210b2590e60eb03d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/Norm/Variantc5a1d8df27f8ca9cb9424232c3355c7123a15e2efc56498f2eb1f26c81bcf663.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/Norm/Variantc5a1d8df27f8ca9cb9424232c3355c7123a15e2efc56498f2eb1f26c81bcf663.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
