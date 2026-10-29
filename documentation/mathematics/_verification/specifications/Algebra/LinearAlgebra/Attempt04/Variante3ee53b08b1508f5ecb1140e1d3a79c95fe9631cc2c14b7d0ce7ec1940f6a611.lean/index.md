# Verification target: GRWTSK.Algebra.LinearAlgebra.Attempt04.Variante3ee53b08b1508f5ecb1140e1d3a79c95fe9631cc2c14b7d0ce7ec1940f6a611

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5beef503e0f236c60d626943a7448a7ec168822",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Attempt04/Variante3ee53b08b1508f5ecb1140e1d3a79c95fe9631cc2c14b7d0ce7ec1940f6a611.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Algebra/LinearAlgebra/Attempt04/Variante3ee53b08b1508f5ecb1140e1d3a79c95fe9631cc2c14b7d0ce7ec1940f6a611.lean/index.md) · [Full source](../../../../../../Algebra/LinearAlgebra/Attempt04/Variante3ee53b08b1508f5ecb1140e1d3a79c95fe9631cc2c14b7d0ce7ec1940f6a611.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5beef503e0f236c60d626943a7448a7ec168822`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Attempt04/Variante3ee53b08b1508f5ecb1140e1d3a79c95fe9631cc2c14b7d0ce7ec1940f6a611.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Attempt04/Variante3ee53b08b1508f5ecb1140e1d3a79c95fe9631cc2c14b7d0ce7ec1940f6a611.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MatrixCalculus` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cartanMatrix](../../../../../../Algebra/LinearAlgebra/Attempt04/Variante3ee53b08b1508f5ecb1140e1d3a79c95fe9631cc2c14b7d0ce7ec1940f6a611.lean/declarations/cartanmatrix--1c6991744ca47931dac49233.md) | 14 | `declaration-track:1c6991744ca47931dac49233f41f17f4e6a27f644a0ff27427e7be29f0214199` |
| 2 | `theorem` | [mutationMatrix_cartan](../../../../../../Algebra/LinearAlgebra/Attempt04/Variante3ee53b08b1508f5ecb1140e1d3a79c95fe9631cc2c14b7d0ce7ec1940f6a611.lean/declarations/mutationmatrix-cartan--602b0797f92814bad22f489a.md) | 17 | `result-track:602b0797f92814bad22f489a9fa307b35526fc1e2143203c063a8450d4396847` |
| 3 | `theorem` | [mutation_form_entry](../../../../../../Algebra/LinearAlgebra/Attempt04/Variante3ee53b08b1508f5ecb1140e1d3a79c95fe9631cc2c14b7d0ce7ec1940f6a611.lean/declarations/mutation-form-entry--5e1cda4abdddb8a724ba3354.md) | 33 | `result-track:5e1cda4abdddb8a724ba33545f0203b5c6680a50b6a4a40f92435601dee93eca` |
| 4 | `theorem` | [weightedCartan_symmetric](../../../../../../Algebra/LinearAlgebra/Attempt04/Variante3ee53b08b1508f5ecb1140e1d3a79c95fe9631cc2c14b7d0ce7ec1940f6a611.lean/declarations/weightedcartan-symmetric--b45a91a6b3b4f8a92155cee9.md) | 49 | `result-track:b45a91a6b3b4f8a92155cee9a7c989f5f893bfcc16b56773abc837e86e5321a3` |
| 5 | `theorem` | [mutationMatrix_weighted_metric](../../../../../../Algebra/LinearAlgebra/Attempt04/Variante3ee53b08b1508f5ecb1140e1d3a79c95fe9631cc2c14b7d0ce7ec1940f6a611.lean/declarations/mutationmatrix-weighted-metric--6d5269991f1eb33ea435d48e.md) | 63 | `result-track:6d5269991f1eb33ea435d48ec354227d73ec6b6751d3076cd95e7c804a298521` |
| 6 | `theorem` | [mutationMatrix_symmetric_metric](../../../../../../Algebra/LinearAlgebra/Attempt04/Variante3ee53b08b1508f5ecb1140e1d3a79c95fe9631cc2c14b7d0ce7ec1940f6a611.lean/declarations/mutationmatrix-symmetric-metric--b3405b0f567cabb27b624536.md) | 81 | `result-track:b3405b0f567cabb27b6245364c07218d7c48c97397cda91a29ed3cca72344720` |
| 7 | `theorem` | [mutationMatrix_nonadjacent_commute](../../../../../../Algebra/LinearAlgebra/Attempt04/Variante3ee53b08b1508f5ecb1140e1d3a79c95fe9631cc2c14b7d0ce7ec1940f6a611.lean/declarations/mutationmatrix-nonadjacent-commute--2699f5fe47eaeb6bbd01c272.md) | 89 | `result-track:2699f5fe47eaeb6bbd01c2725515f493d79c401e0bb0baf161d5cb7f46f1d6bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eb8fd82722bb02da35d4577b4d11162986c78fb111f1bbd3fd0c24c247111171 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Attempt04/Variante3ee53b08b1508f5ecb1140e1d3a79c95fe9631cc2c14b7d0ce7ec1940f6a611.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Attempt04/Variante3ee53b08b1508f5ecb1140e1d3a79c95fe9631cc2c14b7d0ce7ec1940f6a611.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
