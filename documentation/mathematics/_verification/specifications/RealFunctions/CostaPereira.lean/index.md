# Verification target: Costa Pereira

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73160e7e432ce719b4d444282b5e711942fbabac",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/CostaPereira/Variant678382bcc6afc9aab2d531b2a8567c4d786304601f7d17e0a206974e257dc0e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/CostaPereira.lean/index.md) · [Full source](../../../../RealFunctions/CostaPereira.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73160e7e432ce719b4d444282b5e711942fbabac`.

Source path: `GRWTSK/Analysis/CostaPereira/Variant678382bcc6afc9aab2d531b2a8567c4d786304601f7d17e0a206974e257dc0e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/CostaPereira/Variant678382bcc6afc9aab2d531b2a8567c4d786304601f7d17e0a206974e257dc0e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Base` — import line 1; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.SecondaryDefinitions` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sublemma_1_1](../../../../RealFunctions/CostaPereira.lean/declarations/sublemma-1-1.md) | 30 | `result-track:2a943134bfc75336e40feee33057889c84a1c566e8dc7a4323811bc7124e1371` |
| 2 | `theorem` | [sublemma_1_2](../../../../RealFunctions/CostaPereira.lean/declarations/sublemma-1-2.md) | 91 | `result-track:6e3632e323afc3c68a60e4d8daaa5689efd002de411ac0655617c32f6d2e85e6` |
| 3 | `theorem` | [sublemma_1_3](../../../../RealFunctions/CostaPereira.lean/declarations/sublemma-1-3.md) | 112 | `result-track:d548078f32bf1c8cdae972a4f57678063e1af97dfee54c501ba55e3e7a152c73` |
| 4 | `theorem` | [sublemma_1_4](../../../../RealFunctions/CostaPereira.lean/declarations/sublemma-1-4.md) | 155 | `result-track:31b219e20df6547e722b5e8ca155b937454d5e59e6f98ecce7fbba7cedb2c1c8` |
| 5 | `theorem` | [sublemma_1_5](../../../../RealFunctions/CostaPereira.lean/declarations/sublemma-1-5.md) | 232 | `result-track:9c2c3eadfcff91ad188f2b462606a0e810a1485632e6a9993ad49e51e89a8982` |
| 6 | `theorem` | [sublemma_1_6](../../../../RealFunctions/CostaPereira.lean/declarations/sublemma-1-6.md) | 337 | `result-track:cd135630fbed29c02953674bc68471472a9127369b88fa03a3fa13c6e25e9ce0` |
| 7 | `theorem` | [sublemma_1_7](../../../../RealFunctions/CostaPereira.lean/declarations/sublemma-1-7.md) | 367 | `result-track:d5fb24d8accfadcb2cea50986a511a986655bbdb6dc8d757e7a13ddecaa5305a` |
| 8 | `theorem` | [sublemma_1_8](../../../../RealFunctions/CostaPereira.lean/declarations/sublemma-1-8.md) | 486 | `result-track:22599247c1edc2f0d43f44e247f214145692287d0c111038265230dbf0c92356` |
| 9 | `theorem` | [theorem_1a](../../../../RealFunctions/CostaPereira.lean/declarations/theorem-1a.md) | 662 | `result-track:76885a997ab37286d5d535942cf5b4db06171fad0c4523a90e1ca86fc51a908a` |
| 10 | `theorem` | [theorem_1b](../../../../RealFunctions/CostaPereira.lean/declarations/theorem-1b.md) | 679 | `result-track:8630b0ef43b72add1d4ce4c31c386a095967494f2991ddbd32ac613fb0991dbf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=54fde7e537ca395f7741d967149052ad682e881bffce87cbb3f2a6c9d49f70e2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/CostaPereira/Variant678382bcc6afc9aab2d531b2a8567c4d786304601f7d17e0a206974e257dc0e3.lean","GRWTSK/_verification/specifications/Analysis/CostaPereira/Variant678382bcc6afc9aab2d531b2a8567c4d786304601f7d17e0a206974e257dc0e3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
