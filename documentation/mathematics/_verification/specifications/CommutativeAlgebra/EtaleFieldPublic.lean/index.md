# Verification target: Etale Field Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a91dac631599d4754c822503fc46fec84c792281",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Field/Variantfe2660dd57ebc463fbf7f45a32424810e3fbd2577f6f3c99f056a63d72446e90.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/EtaleFieldPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/EtaleFieldPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a91dac631599d4754c822503fc46fec84c792281`.

Source path: `GRWTSK/Algebra/Field/Variantfe2660dd57ebc463fbf7f45a32424810e3fbd2577f6f3c99f056a63d72446e90.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Field/Variantfe2660dd57ebc463fbf7f45a32424810e3fbd2577f6f3c99f056a63d72446e90.lean.json)

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
| 1 | `theorem` | [of_isSeparable_aux](../../../../CommutativeAlgebra/EtaleFieldPublic.lean/declarations/of-isseparable-aux.md) | 56 | `result-track:d1067f4c54485e87ca2a490e22c9febac6d09924a8fc557c60774147685808be` |
| 2 | `lemma` | [of_isSeparable](../../../../CommutativeAlgebra/EtaleFieldPublic.lean/declarations/of-isseparable.md) | 98 | `result-track:023fc71c659b51eafef88e10612f7e379c06f4b39463b3dbcc6f3bc3ba488710` |
| 3 | `theorem` | [iff_isSeparable](../../../../CommutativeAlgebra/EtaleFieldPublic.lean/declarations/iff-isseparable.md) | 158 | `result-track:5f0804a48cfb0322452984bed9f3ee11b484334c482401a9e3357b7aa31dc725` |
| 4 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/EtaleFieldPublic.lean/declarations/instance.md) | 162 | `declaration-track:50343464d12a865c603c8df6b88a138e600199daadbafcd9ab682ea4f01fbb43` |
| 5 | `lemma` | [of_formallyUnramified_of_field](../../../../CommutativeAlgebra/EtaleFieldPublic.lean/declarations/of-formallyunramified-of-field.md) | 175 | `result-track:e5334c07f9196d80e953d155824c1adf597a5d70ee67e83d6141d2d7e8a8f364` |
| 6 | `lemma` | [iff_formallyUnramified_of_field](../../../../CommutativeAlgebra/EtaleFieldPublic.lean/declarations/iff-formallyunramified-of-field.md) | 185 | `result-track:983e31e92a9b816a9db29334a70afbd6fe02cbdfe3d4e9abf2e61cd86a441139` |
| 7 | `theorem` | [iff_exists_algEquiv_prod](../../../../CommutativeAlgebra/EtaleFieldPublic.lean/declarations/iff-exists-algequiv-prod.md) | 194 | `result-track:fab2b4c0d8c42cc30a4b263a9b99837855b6f54cd1078bfa4e9f45f2ceb2a4b0` |
| 8 | `def` | [equivPiOfIsSepClosed](../../../../CommutativeAlgebra/EtaleFieldPublic.lean/declarations/equivpiofissepclosed.md) | 217 | `declaration-track:7a15f369a8787d384b86049e5a166169ec3d073bb1d562af983b53267d856c06` |
| 9 | `lemma` | [equivPiOfIsSepClosed_self_apply](../../../../CommutativeAlgebra/EtaleFieldPublic.lean/declarations/equivpiofissepclosed-self-apply.md) | 232 | `result-track:c28925cd0ee49862480fb02ad967a0f3bd2c9b7969ce22c443c8c2ca2a4cef04` |
| 10 | `lemma` | [equivPiOfIsSepClosed_comap](../../../../CommutativeAlgebra/EtaleFieldPublic.lean/declarations/equivpiofissepclosed-comap.md) | 246 | `result-track:9fcc34a3fc4ff58625bc8b1e20db522cf078fe7d68be103beeee770c4ff53f29` |
| 11 | `theorem` | [Algebra.Etale.iff_exists_algEquiv_prod](../../../../CommutativeAlgebra/EtaleFieldPublic.lean/declarations/algebra-etale-iff-exists-algequiv-prod.md) | 271 | `result-track:ebb3980d5bc504f14f84ad41f5bdc806c0673ddb9db7dc2d0c5391eee62bb19b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f4d916ec0c520c4be66c1378dcbc427b15d12dbbab5eda689479c81df48b9932 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Field/Variantfe2660dd57ebc463fbf7f45a32424810e3fbd2577f6f3c99f056a63d72446e90.lean","GRWTSK/_verification/specifications/Algebra/FieldTheory/Variantfe2660dd57ebc463fbf7f45a32424810e3fbd2577f6f3c99f056a63d72446e90.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
