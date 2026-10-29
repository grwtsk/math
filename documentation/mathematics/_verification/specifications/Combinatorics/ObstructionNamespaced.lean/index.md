# Verification target: Obstruction Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94c392b0f06f88b928f14cf93918127127ccea10",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Obstruction/Variant7d57cd185010cfff0300bf655ccf33e4d5fc121a5a4622975a19fba431c9ca01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ObstructionNamespaced.lean/index.md) · [Full source](../../../../Combinatorics/ObstructionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94c392b0f06f88b928f14cf93918127127ccea10`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Obstruction/Variant7d57cd185010cfff0300bf655ccf33e4d5fc121a5a4622975a19fba431c9ca01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Obstruction/Variant7d57cd185010cfff0300bf655ccf33e4d5fc121a5a4622975a19fba431c9ca01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Juris.Profile` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Mutation.Stratum` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ObstructionKind](../../../../Combinatorics/ObstructionNamespaced.lean/declarations/obstructionkind.md) | 22 | `declaration-track:dcd01880f34c3f9645a5c589e381bc57ee3a7a636c57db0493344fc0eed1e9d8` |
| 2 | `structure` | [ImmutableSnapshot](../../../../Combinatorics/ObstructionNamespaced.lean/declarations/immutablesnapshot.md) | 41 | `declaration-track:c711d9d9d319f797f22baa971b1d90df7939f9f258a61ce612c6a9bf2abfe3ff` |
| 3 | `structure` | [MutationProgram](../../../../Combinatorics/ObstructionNamespaced.lean/declarations/mutationprogram.md) | 46 | `declaration-track:0df0673bff95a09b0050be7277e89cead6ea566fb86f2db6464f8def1651b474` |
| 4 | `structure` | [KnownObstruction](../../../../Combinatorics/ObstructionNamespaced.lean/declarations/knownobstruction.md) | 51 | `declaration-track:0c239f6293fd2855abddf88ccff82c5b0933edbfb74ae4b8e91396d824814ecf` |
| 5 | `def` | [directMutationSupport](../../../../Combinatorics/ObstructionNamespaced.lean/declarations/directmutationsupport.md) | 69 | `declaration-track:c01eb7ab50f2de5944fc2cbac4c99690e5780cf9ea1dfdd0368914586e676fa3` |
| 6 | `theorem` | [direct_mutation_support_exact](../../../../Combinatorics/ObstructionNamespaced.lean/declarations/direct-mutation-support-exact.md) | 76 | `result-track:71350042cf2452123c3d617df2ee334f7315ffafd110ab65258c811d23c26193` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f0b44eb4936e07916a61f1f7771988e7cdf17d65c839b10abaef18119679bbea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Obstruction/Variant7d57cd185010cfff0300bf655ccf33e4d5fc121a5a4622975a19fba431c9ca01.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Obstruction/Variant7d57cd185010cfff0300bf655ccf33e4d5fc121a5a4622975a19fba431c9ca01.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
