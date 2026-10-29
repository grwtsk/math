# Verification target: Binary Ricci Flow Sanity Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "371cdc6a7268d5dc9007ea121fba3bcc757ddb91",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BinaryRicciFlowSanity/Variantadbf0e19ab6f9798f9b37cca072243598ba4ef791ee33d90eab0ffa51b7f17e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/BinaryRicciFlowSanityNamespaced.lean/index.md) · [Full source](../../../../Combinatorics/BinaryRicciFlowSanityNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `371cdc6a7268d5dc9007ea121fba3bcc757ddb91`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BinaryRicciFlowSanity/Variantadbf0e19ab6f9798f9b37cca072243598ba4ef791ee33d90eab0ffa51b7f17e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BinaryRicciFlowSanity/Variantadbf0e19ab6f9798f9b37cca072243598ba4ef791ee33d90eab0ffa51b7f17e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.DiscreteGeometry.BinaryRicciFlow` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dGamma_nonneg](../../../../Combinatorics/BinaryRicciFlowSanityNamespaced.lean/declarations/dgamma-nonneg.md) | 28 | `result-track:63ce113dc6a14ce0157eedda0aa9829335883b4eced83b1e7377751981829612` |
| 2 | `theorem` | [dGamma_symm](../../../../Combinatorics/BinaryRicciFlowSanityNamespaced.lean/declarations/dgamma-symm.md) | 36 | `result-track:c52c06a60133c157ec72042e83f1ed450e5fe95d0dc7844874e1f3575a3ae7e7` |
| 3 | `theorem` | [kernel_pos](../../../../Combinatorics/BinaryRicciFlowSanityNamespaced.lean/declarations/kernel-pos.md) | 46 | `result-track:b77aad3644703241494e8accce22b76e77fd246381c7b3547ef4a78fb57c424d` |
| 4 | `theorem` | [kernel_symm](../../../../Combinatorics/BinaryRicciFlowSanityNamespaced.lean/declarations/kernel-symm.md) | 54 | `result-track:77c7c9836034ca77efdb7fcd8b87a47d8bdbe82a363987ccf35e9cee79e7ea69` |
| 5 | `theorem` | [dGamma_eq_sum_range_of_supports_le](../../../../Combinatorics/BinaryRicciFlowSanityNamespaced.lean/declarations/dgamma-eq-sum-range-of-supports-le.md) | 62 | `result-track:3104a8bc36c60f1e148d9dd56aeebef52d50fc6f520f6fc89ee4a3a420d7d2c8` |
| 6 | `theorem` | [dGamma_triangle](../../../../Combinatorics/BinaryRicciFlowSanityNamespaced.lean/declarations/dgamma-triangle.md) | 86 | `result-track:a7181f18bc153889f412c53b2252c5af5cb6d1426e3174efe44140c3759e17da` |
| 7 | `theorem` | [bitReal_injective](../../../../Combinatorics/BinaryRicciFlowSanityNamespaced.lean/declarations/bitreal-injective.md) | 117 | `result-track:d5ee6929a7e2e639f97e6c13d5bbf869f3684321e3f9a9aa3ec2924fd0a0093f` |
| 8 | `theorem` | [dGamma_eq_zero_iff](../../../../Combinatorics/BinaryRicciFlowSanityNamespaced.lean/declarations/dgamma-eq-zero-iff.md) | 124 | `result-track:48a0195453c207deb7316fdff046837865f520bc659d958e424ca027e722dc73` |
| 9 | `theorem` | [dGamma_metricLike](../../../../Combinatorics/BinaryRicciFlowSanityNamespaced.lean/declarations/dgamma-metriclike.md) | 169 | `result-track:25cfbe8d52a196d44dfeeed06b6739b4f231cb05b9cfc4d581ae44eaba2cfb7b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5e09648a3c9b834e032d9fee5062a37241ab67bc0660fa081b57f427b1175d6c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/BinaryRicciFlowSanity/Variantadbf0e19ab6f9798f9b37cca072243598ba4ef791ee33d90eab0ffa51b7f17e3.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/BinaryRicciFlowSanity/Variantadbf0e19ab6f9798f9b37cca072243598ba4ef791ee33d90eab0ffa51b7f17e3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
