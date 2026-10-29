# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ParseCommand.Variant19bb0c4bfcdc2282c8caeecac28e03a346bb6063dc32a4dd34348ff727c00dfa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3c71c46e9aacc237021ab31e9a9b4ff6e58e2dd",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseCommand/Variant19bb0c4bfcdc2282c8caeecac28e03a346bb6063dc32a4dd34348ff727c00dfa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseCommand/Variant19bb0c4bfcdc2282c8caeecac28e03a346bb6063dc32a4dd34348ff727c00dfa.lean/index.md) · [Full source](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseCommand/Variant19bb0c4bfcdc2282c8caeecac28e03a346bb6063dc32a4dd34348ff727c00dfa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3c71c46e9aacc237021ab31e9a9b4ff6e58e2dd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseCommand/Variant19bb0c4bfcdc2282c8caeecac28e03a346bb6063dc32a4dd34348ff727c00dfa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseCommand/Variant19bb0c4bfcdc2282c8caeecac28e03a346bb6063dc32a4dd34348ff727c00dfa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Command` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Init` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [captureException](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseCommand/Variant19bb0c4bfcdc2282c8caeecac28e03a346bb6063dc32a4dd34348ff727c00dfa.lean/declarations/captureexception--57faba61e25921f55c77f1cf.md) | 22 | `declaration-track:57faba61e25921f55c77f1cf71d3ff20bc24fe19105acbebd2a4e9a21ab4ec69` |
| 2 | `syntax` | [(anonymous)](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseCommand/Variant19bb0c4bfcdc2282c8caeecac28e03a346bb6063dc32a4dd34348ff727c00dfa.lean/declarations/syntax--84188401d3968a302c1c8475.md) | 47 | `declaration-track:84188401d3968a302c1c8475baaddc1b06ec39868b40c013e2ab2031f3a4dd29` |
| 3 | `elab_rules` | [(anonymous)](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseCommand/Variant19bb0c4bfcdc2282c8caeecac28e03a346bb6063dc32a4dd34348ff727c00dfa.lean/declarations/elab-rules--23573997776b4b17fe5deaa9.md) | 50 | `declaration-track:23573997776b4b17fe5deaa915b91958f94a7ee3dd7676f4a2f14d2010772299` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=40f054477ef48dec9d6a74d521007434854c8b4247a85aacad8482e80bd2a703 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseCommand/Variant19bb0c4bfcdc2282c8caeecac28e03a346bb6063dc32a4dd34348ff727c00dfa.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseCommand/Variant19bb0c4bfcdc2282c8caeecac28e03a346bb6063dc32a4dd34348ff727c00dfa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
