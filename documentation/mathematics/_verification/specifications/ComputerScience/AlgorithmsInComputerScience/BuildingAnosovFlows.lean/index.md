# Verification target: Building Anosov Flows

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3509e63db39a98af44c9de6d2f0854415f321257",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BuildingAnosovFlows/Variant74ae2b45a1bb6a82b2934b347974b98f1650a6f4b20ae5226e00b7262fafa906.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/BuildingAnosovFlows.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/BuildingAnosovFlows.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3509e63db39a98af44c9de6d2f0854415f321257`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BuildingAnosovFlows/Variant74ae2b45a1bb6a82b2934b347974b98f1650a6f4b20ae5226e00b7262fafa906.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BuildingAnosovFlows/Variant74ae2b45a1bb6a82b2934b347974b98f1650a6f4b20ae5226e00b7262fafa906.lean.json)

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
| 1 | `structure` | [Context](../../../../../ComputerScience/AlgorithmsInComputerScience/BuildingAnosovFlows.lean/declarations/context.md) | 18 | `declaration-track:d2031d2d2bab3e1188977fd030b6888f12c67547c501e50e8dc42da6394b34a3` |
| 2 | `inductive` | [Atom](../../../../../ComputerScience/AlgorithmsInComputerScience/BuildingAnosovFlows.lean/declarations/atom.md) | 56 | `declaration-track:315ea205d835c91c9b43eab39aa591b06f17389e2428c17bade563afcb4077d4` |
| 3 | `def` | [Atom.id](../../../../../ComputerScience/AlgorithmsInComputerScience/BuildingAnosovFlows.lean/declarations/atom-id.md) | 67 | `declaration-track:fc092c843eb43a3befeca9d6275ee2547cfee462fbb058dcbe57d6edd47872ec` |
| 4 | `def` | [Atom.kind](../../../../../ComputerScience/AlgorithmsInComputerScience/BuildingAnosovFlows.lean/declarations/atom-kind.md) | 77 | `declaration-track:2a68c5b2134c9aabc510009aafc460be87e44c59a0074c81e53def77af39e3c7` |
| 5 | `def` | [Atom.blocks](../../../../../ComputerScience/AlgorithmsInComputerScience/BuildingAnosovFlows.lean/declarations/atom-blocks.md) | 89 | `declaration-track:14ec80449d917f6213cd4c75998ab8392d632724c7eb16d7823c1621852d2c83` |
| 6 | `def` | [Atom.clearsBy](../../../../../ComputerScience/AlgorithmsInComputerScience/BuildingAnosovFlows.lean/declarations/atom-clearsby.md) | 107 | `declaration-track:b68faa93fe08c3c9fe894e4442fff1bf68e91956e88ec27216d47a7181e5051c` |
| 7 | `def` | [atomResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/BuildingAnosovFlows.lean/declarations/atomresidue.md) | 125 | `declaration-track:e46af45eb2f02425848534fe1976d747cabcbb95774dfe3f3000d3ecb0488e52` |
| 8 | `def` | [propositionOneOneClaim](../../../../../ComputerScience/AlgorithmsInComputerScience/BuildingAnosovFlows.lean/declarations/propositiononeoneclaim.md) | 132 | `declaration-track:3c2ae300cd1c23c73e7bb53964e9d2f5d0bb445836277d14330d3af34cf10672` |
| 9 | `def` | [theoremOneFiveClaim](../../../../../ComputerScience/AlgorithmsInComputerScience/BuildingAnosovFlows.lean/declarations/theoremonefiveclaim.md) | 149 | `declaration-track:01ac8e09a7ce5dca696d6d61e20e834f79fc0d4ea9073ec6af15b090671a0f2a` |
| 10 | `def` | [finalClaim](../../../../../ComputerScience/AlgorithmsInComputerScience/BuildingAnosovFlows.lean/declarations/finalclaim.md) | 172 | `declaration-track:b0f57f903a1c3dd41caabc43bac8b330a7f03dfb07777df9149ba8afb5727e6f` |
| 11 | `def` | [finalResidues](../../../../../ComputerScience/AlgorithmsInComputerScience/BuildingAnosovFlows.lean/declarations/finalresidues.md) | 186 | `declaration-track:5c183ffda614fed165b76457481e0a9555fa832ad5f4ecd03f7cea6336da5504` |
| 12 | `def` | [finalWitness](../../../../../ComputerScience/AlgorithmsInComputerScience/BuildingAnosovFlows.lean/declarations/finalwitness.md) | 197 | `declaration-track:76d8dae83b67dd0a0a243c256725f483bafd8d13cd2e24a803b093cea15d4b66` |
| 13 | `theorem` | [finalWitness_hasResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/BuildingAnosovFlows.lean/declarations/finalwitness-hasresidue.md) | 200 | `result-track:264268190a06ae47eaff70292e9bfe2cf7c362bf8f2a240af2cc34f6fdf83774` |
| 14 | `theorem` | [finalResidue_count](../../../../../ComputerScience/AlgorithmsInComputerScience/BuildingAnosovFlows.lean/declarations/finalresidue-count.md) | 204 | `result-track:54354ea61463919b90624bd3825abc438b82d720694ffb09084d8c2e359a07b8` |
| 15 | `def` | [surveyTarget](../../../../../ComputerScience/AlgorithmsInComputerScience/BuildingAnosovFlows.lean/declarations/surveytarget.md) | 208 | `declaration-track:5a782301759f51d73c793e3aec06176a6ef2e9c8753088fd625f4efd766c1fbc` |
| 16 | `theorem` | [surveyTarget_checked_hasResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/BuildingAnosovFlows.lean/declarations/surveytarget-checked-hasresidue.md) | 215 | `result-track:06887d9b7ea0b27b3f710e5bc3f699c6dcf88b8c9f8e260753436a450575f035` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6469914495fdfcabeb1435a12d16722138d2771e84059f13a78a48b397b90d2d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BuildingAnosovFlows/Variant74ae2b45a1bb6a82b2934b347974b98f1650a6f4b20ae5226e00b7262fafa906.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BuildingAnosovFlows/Variant74ae2b45a1bb6a82b2934b347974b98f1650a6f4b20ae5226e00b7262fafa906.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
