# Verification target: Pseudo Anosov Orbit Equiv

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9d276843000c06ef6c8e043bc55f83be529365a",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PseudoAnosovOrbitEquiv/Variantce06ed086c28c40cc8d335b5002914410bbfc60ad3a01583e786a9b92b25c34f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/PseudoAnosovOrbitEquiv.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/PseudoAnosovOrbitEquiv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9d276843000c06ef6c8e043bc55f83be529365a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PseudoAnosovOrbitEquiv/Variantce06ed086c28c40cc8d335b5002914410bbfc60ad3a01583e786a9b92b25c34f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PseudoAnosovOrbitEquiv/Variantce06ed086c28c40cc8d335b5002914410bbfc60ad3a01583e786a9b92b25c34f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.ResearchSurvey.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Context](../../../../../ComputerScience/AlgorithmsInComputerScience/PseudoAnosovOrbitEquiv.lean/declarations/context.md) | 17 | `declaration-track:9567aa723f3566316b202e1b7f06827ece630635459beeadb1eee6a85063abde` |
| 2 | `inductive` | [Atom](../../../../../ComputerScience/AlgorithmsInComputerScience/PseudoAnosovOrbitEquiv.lean/declarations/atom.md) | 41 | `declaration-track:e7bc0c345b11ab116abf5e2b3cee0259cdcce19d14868eb86eb6b509d7ed5acc` |
| 3 | `def` | [Atom.id](../../../../../ComputerScience/AlgorithmsInComputerScience/PseudoAnosovOrbitEquiv.lean/declarations/atom-id.md) | 53 | `declaration-track:17d3dfd4003e4d3c8606b55d80ffea7269ee04bc8897d305c9fa77092f5333c2` |
| 4 | `def` | [Atom.kind](../../../../../ComputerScience/AlgorithmsInComputerScience/PseudoAnosovOrbitEquiv.lean/declarations/atom-kind.md) | 64 | `declaration-track:dcf779fdb9f2da4d44995862862726041471462f60d6dc3051797d7d3c893c3d` |
| 5 | `def` | [Atom.blocks](../../../../../ComputerScience/AlgorithmsInComputerScience/PseudoAnosovOrbitEquiv.lean/declarations/atom-blocks.md) | 75 | `declaration-track:3ef9b9ac732156fdfa48545c62882f4ed5d0441b4125b43aaaaf40a7ebebffd1` |
| 6 | `def` | [Atom.clearsBy](../../../../../ComputerScience/AlgorithmsInComputerScience/PseudoAnosovOrbitEquiv.lean/declarations/atom-clearsby.md) | 95 | `declaration-track:c137f02d90b2d0b4e1220646ace223d7e52fb65a114348a26d49655ad39f3ca5` |
| 7 | `def` | [atomResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/PseudoAnosovOrbitEquiv.lean/declarations/atomresidue.md) | 115 | `declaration-track:2d0b2541aad9ca9c871549312af69055d7277134f01ccc226aebd9fb45364a54` |
| 8 | `def` | [finalClaim](../../../../../ComputerScience/AlgorithmsInComputerScience/PseudoAnosovOrbitEquiv.lean/declarations/finalclaim.md) | 122 | `declaration-track:3cff5f34f50c8b8e7246f94e8c78816f692f41f30c537ad5c733dd9a6fd88f7d` |
| 9 | `def` | [finalResidues](../../../../../ComputerScience/AlgorithmsInComputerScience/PseudoAnosovOrbitEquiv.lean/declarations/finalresidues.md) | 148 | `declaration-track:6d8cdbda71d633ea16613c579a2c45c8ce5993a59e7d0269795faadfdfea1b75` |
| 10 | `def` | [finalWitness](../../../../../ComputerScience/AlgorithmsInComputerScience/PseudoAnosovOrbitEquiv.lean/declarations/finalwitness.md) | 160 | `declaration-track:d6de0f49c5e4971bc7814ab01214bbc34f6d2c93096c8140965b9af0b1e45f4b` |
| 11 | `theorem` | [finalWitness_hasResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/PseudoAnosovOrbitEquiv.lean/declarations/finalwitness-hasresidue.md) | 163 | `result-track:f9903b211af7c868d85c0925c0c3576baa1eaef16b7b63c21ded509415b106c2` |
| 12 | `theorem` | [finalResidue_count](../../../../../ComputerScience/AlgorithmsInComputerScience/PseudoAnosovOrbitEquiv.lean/declarations/finalresidue-count.md) | 167 | `result-track:b33a6c35e00e8db551c7417d0fc861709a413105fbdf031e0ed41a0bf0364a86` |
| 13 | `def` | [surveyTarget](../../../../../ComputerScience/AlgorithmsInComputerScience/PseudoAnosovOrbitEquiv.lean/declarations/surveytarget.md) | 171 | `declaration-track:4fadae77a4b2114e6e6f86ebc8202df1a340c336bf5e860b92980a5367ecf10e` |
| 14 | `theorem` | [surveyTarget_checked_hasResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/PseudoAnosovOrbitEquiv.lean/declarations/surveytarget-checked-hasresidue.md) | 178 | `result-track:ccdf64ca49ab429459832b74088b2a38af15d8b268e17d1ff08c660892ec70e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f94f678744234aef0d86d2b2fa3a7c9ead499169afbb445ce64572a2808f5064 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PseudoAnosovOrbitEquiv/Variantce06ed086c28c40cc8d335b5002914410bbfc60ad3a01583e786a9b92b25c34f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PseudoAnosovOrbitEquiv/Variantce06ed086c28c40cc8d335b5002914410bbfc60ad3a01583e786a9b92b25c34f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
