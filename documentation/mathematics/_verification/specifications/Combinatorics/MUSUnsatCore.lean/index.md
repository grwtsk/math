# Verification target: MUSUnsat Core

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "272247d96a244d6c88d53a898a0458c4b6675770",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MUS/Variant681f814cc49ec11edfe85981981821a0f4a8dac7cce26c7cd9e2a24557fc94aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/MUSUnsatCore.lean/index.md) · [Full source](../../../../Combinatorics/MUSUnsatCore.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `272247d96a244d6c88d53a898a0458c4b6675770`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/MUS/Variant681f814cc49ec11edfe85981981821a0f4a8dac7cce26c7cd9e2a24557fc94aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/MUS/Variant681f814cc49ec11edfe85981981821a0f4a8dac7cce26c7cd9e2a24557fc94aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.BinaryFrontier.Completion.Core` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [UnsatCore](../../../../Combinatorics/MUSUnsatCore.lean/declarations/unsatcore.md) | 17 | `declaration-track:96f84ae8616b105bca1d21bba3437ff21e170345027197bb38b986a5fe84da71` |
| 2 | `structure` | [PrimitiveCore](../../../../Combinatorics/MUSUnsatCore.lean/declarations/primitivecore.md) | 35 | `declaration-track:58e320c3f1d9ed09abaa7f4efdafc54575bd7d4ad06c355e81a5e54f102c5159` |
| 3 | `theorem` | [PrimitiveCore.primitive_core_unsatisfiable](../../../../Combinatorics/MUSUnsatCore.lean/declarations/primitivecore-primitive-core-unsatisfiable.md) | 52 | `result-track:e5ae5b0563ca91408e02ffe938b9641c9f463d9ae30d509c337c72c20e82330c` |
| 4 | `theorem` | [PrimitiveCore.every_proper_subset_feasible](../../../../Combinatorics/MUSUnsatCore.lean/declarations/primitivecore-every-proper-subset-feasible.md) | 68 | `result-track:17c709815d05a1b05011fb46f7eb3e39f02760097a2c17bd445f23e3f5b936d1` |
| 5 | `def` | [primitive_of_all_proper_subsets](../../../../Combinatorics/MUSUnsatCore.lean/declarations/primitive-of-all-proper-subsets.md) | 95 | `declaration-track:c1b76a2fdb00816047a0dcdcd36247b81a34e8205830081e3688752d760fb671` |
| 6 | `def` | [PrimitiveCore.extendRegistry](../../../../Combinatorics/MUSUnsatCore.lean/declarations/primitivecore-extendregistry.md) | 120 | `declaration-track:edd383a957d6472cd74f2718f9cfa4ed322ad93a61caf4d0dc41db94a3d12b84` |
| 7 | `abbrev` | [PrimitiveCoreAt](../../../../Combinatorics/MUSUnsatCore.lean/declarations/primitivecoreat.md) | 147 | `declaration-track:268fcd80ce27f027c55b96c0461b583b6293bee254ffcc2d8f92016b19d283f7` |
| 8 | `abbrev` | [ExtractedPrimitiveCore](../../../../Combinatorics/MUSUnsatCore.lean/declarations/extractedprimitivecore.md) | 158 | `declaration-track:d19b947fb1bf03c57ba54f48d584f4219e486455e238721320a221add69bf8b3` |
| 9 | `structure` | [MUSExtractor](../../../../Combinatorics/MUSUnsatCore.lean/declarations/musextractor.md) | 171 | `declaration-track:66b765cd027f638e9694715ab8920454248e1343abbbb9e2080ea9ccd0930142` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7eca15e75fe1143c600f870116ce2964dd46a0ef6bf39f435bc08805415e4f4e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/MUS/Variant681f814cc49ec11edfe85981981821a0f4a8dac7cce26c7cd9e2a24557fc94aa.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/MUS/Variant681f814cc49ec11edfe85981981821a0f4a8dac7cce26c7cd9e2a24557fc94aa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
