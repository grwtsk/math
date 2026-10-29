# Verification target: Imo1987 Q1 Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e5ee1717a0fbe0069377ce74cf173e21114b494",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variant05041bf4962bcb2983ce87182eeefdbdfb5e47986f97a28c70021452df6cf92b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/Imo1987Q1Public.lean/index.md) · [Full source](../../../../Combinatorics/Imo1987Q1Public.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e5ee1717a0fbe0069377ce74cf173e21114b494`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variant05041bf4962bcb2983ce87182eeefdbdfb5e47986f97a28c70021452df6cf92b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variant05041bf4962bcb2983ce87182eeefdbdfb5e47986f97a28c70021452df6cf92b.lean.json)

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
| 1 | `def` | [fixedPointsEquiv](../../../../Combinatorics/Imo1987Q1Public.lean/declarations/fixedpointsequiv-source-edition-2.md) | 40 | `declaration-track:57671298e09415aed53235868d3efa90903f8b7c78836561a12fd95d214f4b35` |
| 2 | `theorem` | [card_fixed_points](../../../../Combinatorics/Imo1987Q1Public.lean/declarations/card-fixed-points.md) | 48 | `result-track:a41056b248fb698e8fec8fa75365bd3243312a250a3f1dfc0b5d944d84109450` |
| 3 | `def` | [fiber](../../../../Combinatorics/Imo1987Q1Public.lean/declarations/fiber.md) | 58 | `declaration-track:f2da26ae4ccd9e8467b77e033bb3d567d1582d403bde9bfd7596a9c6dc27b53d` |
| 4 | `instance` | [(anonymous)](../../../../Combinatorics/Imo1987Q1Public.lean/declarations/instance.md) | 61 | `declaration-track:332a5ee1cdffa8c2aaa765f5c1a803c299f6f136b5340f0ac151835aa5fa91cd` |
| 5 | `theorem` | [mem_fiber](../../../../Combinatorics/Imo1987Q1Public.lean/declarations/mem-fiber.md) | 64 | `result-track:955b5a709012e71efb4044388e2c25fb70be517b7ed3397a3d5526ee08588d07` |
| 6 | `def` | [p](../../../../Combinatorics/Imo1987Q1Public.lean/declarations/p.md) | 68 | `declaration-track:eac973921c4e85e59ba8901358eb081b9a98ec44e3d3a86ed79305d1ebdc9795` |
| 7 | `def` | [fixedPointsEquiv'](../../../../Combinatorics/Imo1987Q1Public.lean/declarations/fixedpointsequiv.md) | 77 | `declaration-track:1b8fed2a7743c956199794fca3a5623595df2861557d4e8f3f721e87a94b21cb` |
| 8 | `theorem` | [main_fintype](../../../../Combinatorics/Imo1987Q1Public.lean/declarations/main-fintype.md) | 90 | `result-track:5b52b08b216f2e1f3e370a0dc7e450f00559798fee74b28dc393ef61ab3b0610` |
| 9 | `theorem` | [main₀](../../../../Combinatorics/Imo1987Q1Public.lean/declarations/main.md) | 96 | `result-track:42da9e276045805f826696879e78a05444d156cd360218be61c058cd66c3f4e1` |
| 10 | `theorem` | [main](../../../../Combinatorics/Imo1987Q1Public.lean/declarations/main-source-edition-2.md) | 100 | `result-track:d460afcdae9f07046cc79ec48c969a421e92a10c8643884465b38a9472b82a33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=46efe02e8221ed9c9bde39577aaa3ece470fabae695dfd4fb8e3e4feeabe8e8c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variant05041bf4962bcb2983ce87182eeefdbdfb5e47986f97a28c70021452df6cf92b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Variant05041bf4962bcb2983ce87182eeefdbdfb5e47986f97a28c70021452df6cf92b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
