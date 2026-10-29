# Verification target: Defs Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c00a367953a4bb0a7708dcc7af6a8592191706a6",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant9dcf2e64719d73ea1ec859188760ab6db44585b4f86267af411af75119f34dbd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/DefsBasicNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/DefsBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c00a367953a4bb0a7708dcc7af6a8592191706a6`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant9dcf2e64719d73ea1ec859188760ab6db44585b4f86267af411af75119f34dbd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant9dcf2e64719d73ea1ec859188760ab6db44585b4f86267af411af75119f34dbd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.SetNotation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Continuity` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FunProp` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.MkIffOfInductiveProp` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [TopologicalSpace](../../../../GeneralTopology/DefsBasicNamespaced.lean/declarations/topologicalspace.md) | 72 | `declaration-track:141458d4d0ffdb15fcb8771abc3ccaf82d04d1c6150294b191bcd76b779885fc` |
| 2 | `def` | [IsOpen](../../../../GeneralTopology/DefsBasicNamespaced.lean/declarations/isopen.md) | 93 | `declaration-track:8320dcf1583c8fee59b3484e659ebcb473d9a0c1df0fd2eafbcfa69f7a7ddd5f` |
| 3 | `theorem` | [isOpen_univ](../../../../GeneralTopology/DefsBasicNamespaced.lean/declarations/isopen-univ.md) | 95 | `result-track:5f1f5a9308b0436d20bf95bd84e752ca79ccfdf5ccb250d73e1b38ed74bdcb98` |
| 4 | `theorem` | [IsOpen.inter](../../../../GeneralTopology/DefsBasicNamespaced.lean/declarations/isopen-inter.md) | 97 | `result-track:6cf483739867857b84a19c03d6fa958d55a511536f9b037eaa60040138367061` |
| 5 | `theorem` | [isOpen_sUnion](../../../../GeneralTopology/DefsBasicNamespaced.lean/declarations/isopen-sunion.md) | 100 | `result-track:ba81ca2bbf625b9618d25f9c4b2d4b357433d66cde97572ea560243352c78931` |
| 6 | `class` | [IsClosed](../../../../GeneralTopology/DefsBasicNamespaced.lean/declarations/isclosed.md) | 104 | `declaration-track:a0afb503e7a01dcc1a300d0d8a0b137e010e87850791f4b39fdea19c2e2082cc` |
| 7 | `def` | [IsClopen](../../../../GeneralTopology/DefsBasicNamespaced.lean/declarations/isclopen.md) | 109 | `declaration-track:d82e81395b435cf19e82fe43b3ed3516e90366e0bb0bd1f1d70edca085abbed6` |
| 8 | `def` | [IsLocallyClosed](../../../../GeneralTopology/DefsBasicNamespaced.lean/declarations/islocallyclosed.md) | 116 | `declaration-track:d5d9931ceae485917c36509b5fc0fe9ae3139c9f7e42e0ebfbbe1d39918157db` |
| 9 | `def` | [interior](../../../../GeneralTopology/DefsBasicNamespaced.lean/declarations/interior.md) | 119 | `declaration-track:e94c5d1857c499ee052b39aaed3b46187cf076b73fed8d5c0d1a407730afa9cc` |
| 10 | `def` | [closure](../../../../GeneralTopology/DefsBasicNamespaced.lean/declarations/closure.md) | 123 | `declaration-track:8252883332bf6e848a79de7b68dbe59932aa0f75f1d32395b594ab720f398b60` |
| 11 | `def` | [frontier](../../../../GeneralTopology/DefsBasicNamespaced.lean/declarations/frontier.md) | 127 | `declaration-track:4da19e42801fa7484f684f9aee9e2caec9f8fb073ed42870a20aecf99c0aea9f` |
| 12 | `def` | [coborder](../../../../GeneralTopology/DefsBasicNamespaced.lean/declarations/coborder.md) | 139 | `declaration-track:0da1696e43cce7421029ca1113e923735fad3ba16c47b46cc8ca1d34e4df716d` |
| 13 | `def` | [Dense](../../../../GeneralTopology/DefsBasicNamespaced.lean/declarations/dense.md) | 143 | `declaration-track:911c1b95b688444fc18c76006e4362cd46b4bdea9d42ff1da77f2448ef176eb9` |
| 14 | `def` | [DenseRange](../../../../GeneralTopology/DefsBasicNamespaced.lean/declarations/denserange.md) | 147 | `declaration-track:17a889994e83500ff346c5341b27fb81a56a5f7f30b0ea4fde58ba9dc6125ccb` |
| 15 | `structure` | [Continuous](../../../../GeneralTopology/DefsBasicNamespaced.lean/declarations/continuous.md) | 152 | `declaration-track:9a251b91eb74955a12086fbca343c0b10ae77400b691b6d37b0e8461f4544dfd` |
| 16 | `def` | [IsOpenMap](../../../../GeneralTopology/DefsBasicNamespaced.lean/declarations/isopenmap.md) | 159 | `declaration-track:9a2272480ea5788aad0e6bf05259e62f43fe0ce332cb134d36ae8845553b995d` |
| 17 | `def` | [IsClosedMap](../../../../GeneralTopology/DefsBasicNamespaced.lean/declarations/isclosedmap.md) | 163 | `declaration-track:aa5a31f976bbccecdb4cdc847e5f4f9842751c40af4d07e930c5a8c46aebc8a9` |
| 18 | `structure` | [IsOpenQuotientMap](../../../../GeneralTopology/DefsBasicNamespaced.lean/declarations/isopenquotientmap.md) | 179 | `declaration-track:708ee0e519dd5f8ce66df4e84db65002032f798fc0d21f48fa23779efbc7f945` |
| 19 | `class` | [BaireSpace](../../../../GeneralTopology/DefsBasicNamespaced.lean/declarations/bairespace.md) | 208 | `declaration-track:9398cba40d4cb5e2472c9a8b243fa9b9aadb3cb2660d44428ac5f512777525b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9db6a22d45e084356c9dd61c8a0a925cf707ad52e81957f4ee525aa45770007a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant9dcf2e64719d73ea1ec859188760ab6db44585b4f86267af411af75119f34dbd.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant9dcf2e64719d73ea1ec859188760ab6db44585b4f86267af411af75119f34dbd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
