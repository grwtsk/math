# Verification target: Finite Adelic State Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1cac0703d08d10fee7234f2d7c68643416bcf7ec",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variant57adf63581a30308b5a7b7fdb505af976471b4b9943564515078e3c447d0ecb2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/FiniteAdelicStateNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/FiniteAdelicStateNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1cac0703d08d10fee7234f2d7c68643416bcf7ec`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variant57adf63581a30308b5a7b7fdb505af976471b4b9943564515078e3c447d0ecb2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variant57adf63581a30308b5a7b7fdb505af976471b4b9943564515078e3c447d0ecb2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Prismatic.CyclotomicComparison` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Prismatic.PrimeIndexCategory` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Completion` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteAdelicState](../../../../GeneralTopology/FiniteAdelicStateNamespaced.lean/declarations/finiteadelicstate.md) | 31 | `declaration-track:083e2869e979ebd0fdd56f1c37a16c2dd6d960903ca3d1369cf010217d49352f` |
| 2 | `structure` | [RestrictedAdelicCompletion](../../../../GeneralTopology/FiniteAdelicStateNamespaced.lean/declarations/restrictedadeliccompletion.md) | 54 | `declaration-track:b5df35e0975a0fcff166747e2098a47703ff8c7c29a7838f7d9c7bab69b1f389` |
| 3 | `instance` | [completionUniformSpace](../../../../GeneralTopology/FiniteAdelicStateNamespaced.lean/declarations/completionuniformspace.md) | 67 | `declaration-track:4fa02c42d9480556c86d9a7818c418dcce0d9c85c22eb855f0aae4c6676a70c0` |
| 4 | `instance` | [completionCompleteSpace](../../../../GeneralTopology/FiniteAdelicStateNamespaced.lean/declarations/completioncompletespace.md) | 73 | `declaration-track:a725c56f8753ad5cb99537200bddb834d7586ec4d607d8ef4181309928a7a7bd` |
| 5 | `instance` | [completionT0Space](../../../../GeneralTopology/FiniteAdelicStateNamespaced.lean/declarations/completiont0space.md) | 79 | `declaration-track:d4a1bd406733197f2e8c65f3cc48658ea5412e1264924a282d7fb4ea218f9f8c` |
| 6 | `def` | [finiteEmbedding](../../../../GeneralTopology/FiniteAdelicStateNamespaced.lean/declarations/finiteembedding.md) | 85 | `declaration-track:5535022d05d19be19cc3d9fd03c05d7c190bdc19cdb0e408d4bb4009f7b2057c` |
| 7 | `def` | [representedPoint](../../../../GeneralTopology/FiniteAdelicStateNamespaced.lean/declarations/representedpoint.md) | 94 | `declaration-track:cb30aa943804c801e3f4e3ee30be97c92a358765332f4afb1e2492d69a2a0cf3` |
| 8 | `def` | [IsRestrictedAdelicPoint](../../../../GeneralTopology/FiniteAdelicStateNamespaced.lean/declarations/isrestrictedadelicpoint.md) | 104 | `declaration-track:2986bf23f1d2b59e09066189cddea9d1147d4c455a19973f40dca877997faa24` |
| 9 | `theorem` | [finiteEmbedding_dense](../../../../GeneralTopology/FiniteAdelicStateNamespaced.lean/declarations/finiteembedding-dense.md) | 110 | `result-track:6e74e78b4d542d8401d960dc0b349b72d0e51f3a3c981500a0b8ab720a301200` |
| 10 | `theorem` | [everyPoint_restricted](../../../../GeneralTopology/FiniteAdelicStateNamespaced.lean/declarations/everypoint-restricted.md) | 116 | `result-track:8bf358e58f1d9bf8cbab3e24cea2d9dbcbc1cfb1a185cee6e76305ce38d24a46` |
| 11 | `theorem` | [finiteEmbedding_injective](../../../../GeneralTopology/FiniteAdelicStateNamespaced.lean/declarations/finiteembedding-injective.md) | 127 | `result-track:0c86e1187c820abf03aa95bb3bb07250f5d9df0e3f33beade4d67e11078e03f0` |
| 12 | `def` | [extend](../../../../GeneralTopology/FiniteAdelicStateNamespaced.lean/declarations/extend.md) | 139 | `declaration-track:9de4c825e1cf2bc040e3cc408a99c7a1ae7ad06cd7c9a4c8a591c2bdb2e2e088` |
| 13 | `theorem` | [universalProperty](../../../../GeneralTopology/FiniteAdelicStateNamespaced.lean/declarations/universalproperty.md) | 156 | `result-track:fac5f285a04a67a82067e119fb860ee143737aaaf31f295f684a74eaa40a7ba8` |
| 14 | `def` | [compareEquiv](../../../../GeneralTopology/FiniteAdelicStateNamespaced.lean/declarations/compareequiv.md) | 189 | `declaration-track:9407ff2999efd9a649372f127632bde6faae8831eabce11d6f0df770ce84df78` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6d0a60243aa64e271dd8580d674d9bf52cb16459e07132f002a53d9f19f2001e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variant57adf63581a30308b5a7b7fdb505af976471b4b9943564515078e3c447d0ecb2.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variant57adf63581a30308b5a7b7fdb505af976471b4b9943564515078e3c447d0ecb2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
