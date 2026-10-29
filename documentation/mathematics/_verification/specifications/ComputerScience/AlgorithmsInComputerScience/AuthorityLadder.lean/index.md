# Verification target: Authority Ladder

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0680e06b3363fa457615e75e2f0a775d2b68073a",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f56616c69646174696f6e2f417574686f726974794c61646465722e6c65616/Variantab24d79cb41116cacaec335ca3a312edaacc426686bb64edc1754feb7b3d6b47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/AuthorityLadder.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/AuthorityLadder.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0680e06b3363fa457615e75e2f0a775d2b68073a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f56616c69646174696f6e2f417574686f726974794c61646465722e6c65616/Variantab24d79cb41116cacaec335ca3a312edaacc426686bb64edc1754feb7b3d6b47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f56616c69646174696f6e2f417574686f726974794c61646465722e6c65616/Variantab24d79cb41116cacaec335ca3a312edaacc426686bb64edc1754feb7b3d6b47.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Bit0.Bit0.Bit1.Bit1.Bit1.Bit0.Bit1.Bit1.M506970656c696e652f56616c69646174696f6e2f536f7572636543617272792e6c65616e` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [AuthorityPhase](../../../../../ComputerScience/AlgorithmsInComputerScience/AuthorityLadder.lean/declarations/authorityphase.md) | 10 | `declaration-track:c7773d7e378fda57506f9d9361960a97c701af3dfe5e65831e2c073102383913` |
| 2 | `def` | [label](../../../../../ComputerScience/AlgorithmsInComputerScience/AuthorityLadder.lean/declarations/label.md) | 25 | `declaration-track:b9dfffa8deb486af10dbdf6a26199bbc77f3b633ab6e7c8ba312b84d5fdc954e` |
| 3 | `def` | [allAuthorityPhases](../../../../../ComputerScience/AlgorithmsInComputerScience/AuthorityLadder.lean/declarations/allauthorityphases.md) | 39 | `declaration-track:2005fc10e7e6129c943a18859d10751e160b7d28cc5dea9cf18cdd139d9e25e1` |
| 4 | `theorem` | [allAuthorityPhases_complete](../../../../../ComputerScience/AlgorithmsInComputerScience/AuthorityLadder.lean/declarations/allauthorityphases-complete.md) | 51 | `result-track:06ec8e64f58d308fa2f701eeca91f4afdda9ab335e46cfe13078cd806f2db94b` |
| 5 | `theorem` | [allAuthorityPhases_nodup](../../../../../ComputerScience/AlgorithmsInComputerScience/AuthorityLadder.lean/declarations/allauthorityphases-nodup.md) | 54 | `result-track:1f8a767155aa92bcb914605a334f96c7ea78d4bfabec8aa9dba617deaaf6732f` |
| 6 | `inductive` | [TerminalAuthority](../../../../../ComputerScience/AlgorithmsInComputerScience/AuthorityLadder.lean/declarations/terminalauthority.md) | 57 | `declaration-track:eee7defe2d278e8b1d47415d726088e39f2b97fb1c5925296dd45f22cbffee70` |
| 7 | `inductive` | [ForceAction](../../../../../ComputerScience/AlgorithmsInComputerScience/AuthorityLadder.lean/declarations/forceaction.md) | 65 | `declaration-track:b01a568d158bf1e02b21d725332b015490654b94f5fe8b4ae3d875ac59f9fdec` |
| 8 | `inductive` | [ResiduePriority](../../../../../ComputerScience/AlgorithmsInComputerScience/AuthorityLadder.lean/declarations/residuepriority.md) | 75 | `declaration-track:5cbf06cc0f625c997f7bc5cbae9fd75d811f72bf3bc7be7794ca8e3a5317bc3b` |
| 9 | `inductive` | [VerdictClassifier](../../../../../ComputerScience/AlgorithmsInComputerScience/AuthorityLadder.lean/declarations/verdictclassifier.md) | 83 | `declaration-track:558801b2036ecb57d6e18e8246a39a65a19b30597b360a44042ddcab42bc50d2` |
| 10 | `structure` | [ResidueMatrixRow](../../../../../ComputerScience/AlgorithmsInComputerScience/AuthorityLadder.lean/declarations/residuematrixrow.md) | 94 | `declaration-track:a89ef7db628bf7aa963a501e3381362a47de4a6557f8b4fdf56997091f12102b` |
| 11 | `structure` | [ResearchResiduePacket](../../../../../ComputerScience/AlgorithmsInComputerScience/AuthorityLadder.lean/declarations/researchresiduepacket.md) | 110 | `declaration-track:d2c8966da2d7ec35235208a494b1ac2a2a40f62af5aa1b708799d00bbbefb323` |
| 12 | `structure` | [FixedPointResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/AuthorityLadder.lean/declarations/fixedpointresidue.md) | 118 | `declaration-track:cf396cd410e5eff23b43a2f912942f72e8ecf836120784d10d5daeb4429f7273` |
| 13 | `structure` | [RefereeResidueEliminator](../../../../../ComputerScience/AlgorithmsInComputerScience/AuthorityLadder.lean/declarations/refereeresidueeliminator.md) | 125 | `declaration-track:493340e40aaffab4df356cf37a5220287323248966d188a2077355dc6e17307d` |
| 14 | `def` | [nonemptyMatrix](../../../../../ComputerScience/AlgorithmsInComputerScience/AuthorityLadder.lean/declarations/nonemptymatrix.md) | 135 | `declaration-track:f5387c05ce062a40559c530fc8fed7872fec01eb3665d8c61249038c377cffef` |
| 15 | `def` | [theoremAuthorityRefused](../../../../../ComputerScience/AlgorithmsInComputerScience/AuthorityLadder.lean/declarations/theoremauthorityrefused.md) | 138 | `declaration-track:ed4a94a38229a6aff93317f27cf638b19458d9616ed111f820864f180d594258` |
| 16 | `theorem` | [referee_not_theorem_authority](../../../../../ComputerScience/AlgorithmsInComputerScience/AuthorityLadder.lean/declarations/referee-not-theorem-authority.md) | 141 | `result-track:c4add5a9cc3c86db926084beb2fc159d1e3946455838fa1cbc18e5fc688c1f1f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=235e5e7f1afdb40a8cfe073556c96db3b36718bdea0c90a4f82859ed190fc20a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f56616c69646174696f6e2f417574686f726974794c61646465722e6c65616/Variantab24d79cb41116cacaec335ca3a312edaacc426686bb64edc1754feb7b3d6b47.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f56616c69646174696f6e2f417574686f726974794c61646465722e6c65616/Variantab24d79cb41116cacaec335ca3a312edaacc426686bb64edc1754feb7b3d6b47.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
