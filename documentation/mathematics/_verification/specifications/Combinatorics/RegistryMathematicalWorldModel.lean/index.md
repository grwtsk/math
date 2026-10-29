# Verification target: Registry Mathematical World Model

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eab0bc0f6c8d104ba79f2e211dea5d5d90296e84",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Registry/Variant85eddb2d32fcbd39fc9f74ce51c3f1b2bb732cf09c7be8868768010751eb2eed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/RegistryMathematicalWorldModel.lean/index.md) · [Full source](../../../../Combinatorics/RegistryMathematicalWorldModel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eab0bc0f6c8d104ba79f2e211dea5d5d90296e84`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Registry/Variant85eddb2d32fcbd39fc9f74ce51c3f1b2bb732cf09c7be8868768010751eb2eed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Registry/Variant85eddb2d32fcbd39fc9f74ce51c3f1b2bb732cf09c7be8868768010751eb2eed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.ContinuousAssurance.WorldModel.ObjectIndex` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.DependencyGraph` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.NNReal.Defs` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MathematicalWorldModel](../../../../Combinatorics/RegistryMathematicalWorldModel.lean/declarations/mathematicalworldmodel.md) | 19 | `declaration-track:7794f25ddee000763b3713d26869b384dfbeb1607593ab3b7cb37e6dd6c56c7d` |
| 2 | `structure` | [WorldModelRegistry](../../../../Combinatorics/RegistryMathematicalWorldModel.lean/declarations/worldmodelregistry.md) | 49 | `declaration-track:148b1abbe964e89a7ea4d924cd3d0fe67e166c09b9c8ff3a56fbb33c48d1fe9b` |
| 3 | `abbrev` | [ModelId](../../../../Combinatorics/RegistryMathematicalWorldModel.lean/declarations/modelid.md) | 68 | `declaration-track:1823bb46e47dfee0e35518572d8faeb7cb00ca75224d4735f4b5503fe5ae732d` |
| 4 | `def` | [Version](../../../../Combinatorics/RegistryMathematicalWorldModel.lean/declarations/version.md) | 72 | `declaration-track:26d6cdabbdfc035adc485f9a9ea1beb42a31b25052198a6d09fa5024d0b9983a` |
| 5 | `def` | [HasVersion](../../../../Combinatorics/RegistryMathematicalWorldModel.lean/declarations/hasversion.md) | 77 | `declaration-track:94352e1be413824484a6cb80876d8c4f3d8b13185b6c5350a880bf63f77e4e7f` |
| 6 | `theorem` | [version_slot_unique](../../../../Combinatorics/RegistryMathematicalWorldModel.lean/declarations/version-slot-unique.md) | 83 | `result-track:d7580c080fc5c9b4cb7f68b3de357e3973def95f4c05595a1ba99d1e94e46465` |
| 7 | `theorem` | [stored_source_digest_valid](../../../../Combinatorics/RegistryMathematicalWorldModel.lean/declarations/stored-source-digest-valid.md) | 91 | `result-track:b6282b117ad80e1950c507d659f3811f4744db5b2e103ef0b014901267bf8e37` |
| 8 | `theorem` | [supersession_wellFounded](../../../../Combinatorics/RegistryMathematicalWorldModel.lean/declarations/supersession-wellfounded.md) | 98 | `result-track:d147c93e8df5fcbc321b30b8b7553dc518d7682a5cb87e2216acf39916f1e7da` |
| 9 | `theorem` | [no_supersession_cycle](../../../../Combinatorics/RegistryMathematicalWorldModel.lean/declarations/no-supersession-cycle.md) | 107 | `result-track:a82d511b01922bc5cb990b847534905e4f4ecf838520c3e94a9bc693ba515273` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5e0fa36fdcc8d0ac77f995ea7fe575632bed8d757357f80c64eaf1bd45173773 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Registry/Variant85eddb2d32fcbd39fc9f74ce51c3f1b2bb732cf09c7be8868768010751eb2eed.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Registry/Variant85eddb2d32fcbd39fc9f74ce51c3f1b2bb732cf09c7be8868768010751eb2eed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
