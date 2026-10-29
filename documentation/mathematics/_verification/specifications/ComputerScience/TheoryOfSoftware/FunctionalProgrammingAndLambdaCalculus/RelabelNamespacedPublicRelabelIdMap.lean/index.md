# Verification target: Relabel Namespaced Public Relabel Id Map

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ccadd2fc6747aaf925eaa17d84e76933a6b7e7d7",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relabel/Variant8a2ef12dce04e37812eb8bed2be264cde16d5b20fbd94bcd80824eae956bb663.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RelabelNamespacedPublicRelabelIdMap.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RelabelNamespacedPublicRelabelIdMap.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ccadd2fc6747aaf925eaa17d84e76933a6b7e7d7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relabel/Variant8a2ef12dce04e37812eb8bed2be264cde16d5b20fbd94bcd80824eae956bb663.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relabel/Variant8a2ef12dce04e37812eb8bed2be264cde16d5b20fbd94bcd80824eae956bb663.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [relabel](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RelabelNamespacedPublicRelabelIdMap.lean/declarations/relabel.md) | 30 | `declaration-track:0054979482231bf2990a6fc3ec3feaf3cd743e5faa9fee30cdbb9adf08728820` |
| 2 | `theorem` | [relabel_id_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RelabelNamespacedPublicRelabelIdMap.lean/declarations/relabel-id-map.md) | 36 | `result-track:49af8cd4f0ceaebdde4fe667b0cc5bb0de5ea8471539d41ac32035cefc80f0ba` |
| 3 | `theorem` | [relabel_comp](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RelabelNamespacedPublicRelabelIdMap.lean/declarations/relabel-comp.md) | 40 | `result-track:f036cf2bd82873041be7cf186ff2ce61ac84599453bdba1612d12127edc779d7` |
| 4 | `theorem` | [relabel_false](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RelabelNamespacedPublicRelabelIdMap.lean/declarations/relabel-false-source-edition-2.md) | 44 | `result-track:93ed70b2d78a39b208372631b97793fb2b4e2e8463973897b37ebb4d3ba1ad5c` |
| 5 | `theorem` | [relabel_atom](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RelabelNamespacedPublicRelabelIdMap.lean/declarations/relabel-atom-source-edition-2.md) | 50 | `result-track:9513f12d9f9c0a0e000fd15673874099a4d1bfe4bd20b2afba45f8579c5c2f3b` |
| 6 | `theorem` | [relabel_gate](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RelabelNamespacedPublicRelabelIdMap.lean/declarations/relabel-gate.md) | 62 | `result-track:1ff56ea73b1c6f22a1def767828c6a1250e59e80f2da3ec1520dd74ba1d7fd60` |
| 7 | `def` | [relabel](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RelabelNamespacedPublicRelabelIdMap.lean/declarations/relabel-source-edition-3.md) | 73 | `declaration-track:f8af17adbca550f16497983a9a6b8b420619675d3290e8cb40b34dab54a5ebe9` |
| 8 | `theorem` | [relabel_size_eq_size](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RelabelNamespacedPublicRelabelIdMap.lean/declarations/relabel-size-eq-size.md) | 90 | `result-track:3cec53d7a7466fb3c3ac3a87871cebd564d23eeb20563068a85ee581cc7b3cc3` |
| 9 | `theorem` | [relabel_false](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RelabelNamespacedPublicRelabelIdMap.lean/declarations/relabel-false.md) | 94 | `result-track:24aa6fef4508cad5ed8fb04a5a21884cf447eed1fdd132fc306985ad043e098e` |
| 10 | `theorem` | [relabel_atom](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RelabelNamespacedPublicRelabelIdMap.lean/declarations/relabel-atom.md) | 101 | `result-track:75cadac4a380b0938f8225df77ce54e1517579752335f1c2404abd024c380721` |
| 11 | `theorem` | [relabel_gate](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RelabelNamespacedPublicRelabelIdMap.lean/declarations/relabel-gate-source-edition-2.md) | 107 | `result-track:b7c4f87df08be610550e332b32fb5ba92ddcddefedca022b61db533434a07626` |
| 12 | `theorem` | [denote_relabel](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RelabelNamespacedPublicRelabelIdMap.lean/declarations/denote-relabel.md) | 114 | `result-track:55a3168d8747dec349e6fb6b463b1a1e987c785b0f19961900df29ae0e3921b8` |
| 13 | `theorem` | [unsat_relabel](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RelabelNamespacedPublicRelabelIdMap.lean/declarations/unsat-relabel.md) | 138 | `result-track:8ed51dc8fb9a23bba0fa89a2adf97ce61c8631ba43498bdcc70b147ec3976fe5` |
| 14 | `theorem` | [relabel_unsat_iff_of_not_Nonempty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RelabelNamespacedPublicRelabelIdMap.lean/declarations/relabel-unsat-iff-of-not-nonempty.md) | 144 | `result-track:f7befab76613c7cb5047a85afa6ccb66961577dc1c0bfbd9bda36f397dea97d9` |
| 15 | `theorem` | [relabel_unsat_iff_of_Nonempty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RelabelNamespacedPublicRelabelIdMap.lean/declarations/relabel-unsat-iff-of-nonempty.md) | 158 | `result-track:4d3a4372c8da1b4b7d2eb27d768e4236345cc3b870c9647a6a2f7111b7902768` |
| 16 | `theorem` | [relabel_unsat_iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RelabelNamespacedPublicRelabelIdMap.lean/declarations/relabel-unsat-iff.md) | 187 | `result-track:0f978f94267e32e513921e0865f2ce3770934e806a875a88955f94cd865c9a31` |
| 17 | `def` | [relabel](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RelabelNamespacedPublicRelabelIdMap.lean/declarations/relabel-source-edition-2.md) | 196 | `declaration-track:f1034b4c8e01c837e20f11b678cdeb52a126861bff10c37652a55b2b1276d7e9` |
| 18 | `theorem` | [relabel_size_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RelabelNamespacedPublicRelabelIdMap.lean/declarations/relabel-size-eq.md) | 203 | `result-track:159a726c8fbfc208b91563a5fbb235acf263426a4fa93a2c436a4e38b3fcc628` |
| 19 | `theorem` | [relabel_unsat_iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RelabelNamespacedPublicRelabelIdMap.lean/declarations/relabel-unsat-iff-source-edition-2.md) | 207 | `result-track:d4a11afb0d049ef3664d366453141d1fdf8d5cb9e7785b2a4ac79237f6df055c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=55e6f5fb1d954e0d56a614ec938203109fc01384dcb432a3226a9c6192d63e8c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relabel/Variant8a2ef12dce04e37812eb8bed2be264cde16d5b20fbd94bcd80824eae956bb663.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relabel/Variant8a2ef12dce04e37812eb8bed2be264cde16d5b20fbd94bcd80824eae956bb663.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
