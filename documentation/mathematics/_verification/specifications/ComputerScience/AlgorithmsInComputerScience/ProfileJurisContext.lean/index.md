# Verification target: Profile Juris Context

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c898190a87598b371122f063d38d8ad472b7500",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Profile/Variant80ee5470f3387d22bcc6daa879f94755cc49a7ea7506340dcea05a2e3dbc5320.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ProfileJurisContext.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ProfileJurisContext.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c898190a87598b371122f063d38d8ad472b7500`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Profile/Variant80ee5470f3387d22bcc6daa879f94755cc49a7ea7506340dcea05a2e3dbc5320.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Profile/Variant80ee5470f3387d22bcc6daa879f94755cc49a7ea7506340dcea05a2e3dbc5320.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Capability.Scope` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Juris.Disposition` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [JurisContext](../../../../../ComputerScience/AlgorithmsInComputerScience/ProfileJurisContext.lean/declarations/juriscontext.md) | 15 | `declaration-track:80d6debdc239ef591b3bac0f267a4a14d97b9e70eb2e3e0e533a0b0d6bf2a6f3` |
| 2 | `structure` | [JurisProfile](../../../../../ComputerScience/AlgorithmsInComputerScience/ProfileJurisContext.lean/declarations/jurisprofile.md) | 24 | `declaration-track:2581783b691203fa04d37bed1380b1e8433a39f2ca56769da0f6c425dacf2554` |
| 3 | `def` | [jurisEvaluate](../../../../../ComputerScience/AlgorithmsInComputerScience/ProfileJurisContext.lean/declarations/jurisevaluate.md) | 33 | `declaration-track:9ed4d2f50c3f05cbb46c9d504ddd28bd62fdec0c549d427d6068e207e5dce0d0` |
| 4 | `structure` | [JurisAdmission](../../../../../ComputerScience/AlgorithmsInComputerScience/ProfileJurisContext.lean/declarations/jurisadmission.md) | 39 | `declaration-track:3d003bd078f6af07f03c9905c0e3987f6536cfd0aeada9572654bf1de4e38d98` |
| 5 | `theorem` | [JurisAdmission.mayExecute](../../../../../ComputerScience/AlgorithmsInComputerScience/ProfileJurisContext.lean/declarations/jurisadmission-mayexecute.md) | 45 | `result-track:d407486afd627dd255c43313431717aceeff8bbbd6eb6ace855d545b13f9d7b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1afd4047b99e392a7afdac81b845edbc21274634ee6205e2340e0837883c6453 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Profile/Variant80ee5470f3387d22bcc6daa879f94755cc49a7ea7506340dcea05a2e3dbc5320.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Profile/Variant80ee5470f3387d22bcc6daa879f94755cc49a7ea7506340dcea05a2e3dbc5320.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
