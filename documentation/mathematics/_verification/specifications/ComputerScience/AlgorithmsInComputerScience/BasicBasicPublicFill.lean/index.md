# Verification target: Basic Basic Public Fill

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "310cea7dfdad9f9bd709caf781450a2e16770c94",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4e0c7d6632d2d18dd2a8e9647dd4c7cf0d14dfdfb8cdcb593a6b30a252a96764.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicFill.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicFill.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `310cea7dfdad9f9bd709caf781450a2e16770c94`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4e0c7d6632d2d18dd2a8e9647dd4c7cf0d14dfdfb8cdcb593a6b30a252a96764.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4e0c7d6632d2d18dd2a8e9647dd4c7cf0d14dfdfb8cdcb593a6b30a252a96764.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Control.State` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Bitwise.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Format.FlattenBehavior](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicFill.lean/declarations/format-flattenbehavior.md) | 34 | `declaration-track:4ddaceb44057ad9fd228a1948d5c2b0484048981efe8f008a2f30ad7b9320992` |
| 2 | `inductive` | [Format](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicFill.lean/declarations/format.md) | 55 | `declaration-track:840f350d742cbb0dc808dee061f3ef4bbf9622339f3b7d71e4daa208677df331` |
| 3 | `def` | [isEmpty](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicFill.lean/declarations/isempty.md) | 112 | `declaration-track:726d181a53ad87b91181391ef4a12c89276b9fb4b2dd64f5396e6189a570c636` |
| 4 | `def` | [fill](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicFill.lean/declarations/fill.md) | 127 | `declaration-track:eefae915406962e7f054511e67fc98113f72df2580b6bbf47766054cb7132733` |
| 5 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicFill.lean/declarations/instance.md) | 130 | `declaration-track:62c156fa0fb5e1473682917675dd971c7663f4bdb5b3fb42290b0b9c115e0ea3` |
| 6 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicFill.lean/declarations/instance-source-edition-3.md) | 131 | `declaration-track:ab8e835e24299c7c4240159024c0e40aae020feda8859c125562eafdfcc11119` |
| 7 | `def` | [join](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicFill.lean/declarations/join.md) | 136 | `declaration-track:792864a2ecf386a3b00eb6221957e57707990947f6775cd228e02b874304812d` |
| 8 | `def` | [isNil](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicFill.lean/declarations/isnil.md) | 145 | `declaration-track:430dfe5ebab75f2b536ac39b127821ef197d2e4ebecf1007f8e9eb6cc421329c` |
| 9 | `structure` | [SpaceResult](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicFill.lean/declarations/spaceresult.md) | 149 | `declaration-track:a7bf17880a684eb093187525eadb2c597c11d315237a63aec343b39b76bbd9fd` |
| 10 | `def` | [merge](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicFill.lean/declarations/merge.md) | 155 | `declaration-track:e96ea64456a25f0a01a0c9128fe85af476823d2c5f6d807e4f62f313d653db37` |
| 11 | `def` | [spaceUptoLine](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicFill.lean/declarations/spaceuptoline.md) | 162 | `declaration-track:1438bfb38ad8ef2901601b7f9a6df751e8bb61d572188d1a8fa856825086d820` |
| 12 | `structure` | [WorkItem](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicFill.lean/declarations/workitem.md) | 180 | `declaration-track:897ea58d1be1e7c2647255259bade9cbfbd84ba55f34e8260372b2971897d4a4` |
| 13 | `inductive` | [FlattenAllowability](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicFill.lean/declarations/flattenallowability.md) | 194 | `declaration-track:f895c5620931587872e28f52dd150ede0d9cf9cc3cfdc2c37047f9d86f440d22` |
| 14 | `def` | [FlattenAllowability.shouldFlatten](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicFill.lean/declarations/flattenallowability-shouldflatten.md) | 200 | `declaration-track:21fd069a95dfd2a316db0f3d66d25d36b4e790fc455e402cc5668373b173b1da` |
| 15 | `structure` | [WorkGroup](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicFill.lean/declarations/workgroup.md) | 204 | `declaration-track:ed74668d384d88e5554b4ead8edfa5718515af81f9bc98fb9506e26257ef6aef` |
| 16 | `def` | [spaceUptoLine'](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicFill.lean/declarations/spaceuptoline-source-edition-2.md) | 209 | `declaration-track:4a1faf747cb7b78374e7633e71ef9d3f5428ecbc6c3ef56ca613c9c6eabe9e4d` |
| 17 | `class` | [MonadPrettyFormat](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicFill.lean/declarations/monadprettyformat.md) | 220 | `declaration-track:12583a493d65e4daf172f2d311d6083f35b029795ad8491a552ff4813a314648` |
| 18 | `def` | [pushGroup](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicFill.lean/declarations/pushgroup.md) | 243 | `declaration-track:8104c99164f1048d59285a1bf11f56a0e5f576806b96b759c9d051fe5b924aa9` |
| 19 | `def` | [be](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicFill.lean/declarations/be.md) | 252 | `declaration-track:29fb8028a820d5f85ea706a02d80b904ae36fdf4e6495dbc5da5db802bd54a41` |
| 20 | `def` | [prettyM](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicFill.lean/declarations/prettym.md) | 345 | `declaration-track:09084096b2f28e00ad50f50fb29b84533bbf5470b633c6403c0e4c544fa3d29b` |
| 21 | `def` | [bracket](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicFill.lean/declarations/bracket.md) | 353 | `declaration-track:722ca398703e99b45b480b39461b85f81ed7248edfd29134069099ded4b6793e` |
| 22 | `def` | [paren](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicFill.lean/declarations/paren.md) | 359 | `declaration-track:feb6020742e15c8c83d50862283723aa59045670fbb74ad0949656c3d509bd5c` |
| 23 | `def` | [sbracket](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicFill.lean/declarations/sbracket.md) | 367 | `declaration-track:cf274efa043b7f120a8cbdea6b62a38c303c1173594fd3c2fad22d856776b337` |
| 24 | `def` | [bracketFill](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicFill.lean/declarations/bracketfill.md) | 375 | `declaration-track:e275aec92110f048e893b1f886bf6ed30619a2a106581d0971f6462682b1331f` |
| 25 | `def` | [defIndent](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicFill.lean/declarations/defindent.md) | 379 | `declaration-track:0a85b84bd218c17a956254737665956ec1b74c5ec3f2373c367a5706a8a3a735` |
| 26 | `def` | [defUnicode](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicFill.lean/declarations/defunicode.md) | 380 | `declaration-track:adeada44e4314531cae0487b9548ae9b79de808a5cd2ea334c260999907ee520` |
| 27 | `def` | [defWidth](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicFill.lean/declarations/defwidth.md) | 382 | `declaration-track:d36415fed092b8ace5cc75ca216b64a18b7f8005533550e1be1c8157dbf1d410` |
| 28 | `def` | [nestD](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicFill.lean/declarations/nestd.md) | 387 | `declaration-track:2ab288aeb34a3f09cfbeeb6a626ea56976d041c6badebeb200b435aa68659caf` |
| 29 | `def` | [indentD](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicFill.lean/declarations/indentd.md) | 391 | `declaration-track:e4d087d2ab04dd59b756873862d91904e8f76202b1c047047a356b2b800325b2` |
| 30 | `structure` | [State](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicFill.lean/declarations/state.md) | 395 | `declaration-track:93465a02c4d4b9b27d317a48a015334e39495a0fd1f8c8be3d5e77fb06372b48` |
| 31 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicFill.lean/declarations/instance-source-edition-4.md) | 399 | `declaration-track:c1a2aecfc5472fe04fd7404fee77cc864450cfe958707d70ec39329e0690c4bc` |
| 32 | `def` | [pretty](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicFill.lean/declarations/pretty.md) | 415 | `declaration-track:af7f60c19304b0b3e8a96bf7c0847e3985a9eec02e7f50a11fc3ef3d567633b5` |
| 33 | `class` | [ToFormat](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicFill.lean/declarations/toformat.md) | 427 | `declaration-track:d05a110ad130584298b9eb43e90a8f9008d15f84bf8f0cc58cf48aa89b460fd7` |
| 34 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicFill.lean/declarations/instance-source-edition-2.md) | 437 | `declaration-track:a97b5dbe4dcac6005bd0103ac789a9b5e03850009f0a67ddbf40d23a52e14261` |
| 35 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicFill.lean/declarations/instance-source-edition-5.md) | 440 | `declaration-track:dfb831a1c3b46b16f189e2bd0487deffc04f11906f864ad3d3ec5cd618af5362` |
| 36 | `def` | [Format.joinSep](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicFill.lean/declarations/format-joinsep.md) | 448 | `declaration-track:6d839e916f626be04145d63375a2e3995c1752ec9a1b4d65edfe648ea37f5d27` |
| 37 | `def` | [Format.prefixJoin](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicFill.lean/declarations/format-prefixjoin.md) | 458 | `declaration-track:f960ee4effc8e2c2517c23d234274ad25314d15e378c5b743a3d7c3e44476986` |
| 38 | `def` | [Format.joinSuffix](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicFill.lean/declarations/format-joinsuffix.md) | 468 | `declaration-track:04730b8bfa44f24a70ffc5d8c6d24b192f6de51f7a04675f6370c1d99230ed35` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e8a9aaa8fced56d56a61554dbfb68651990599eb59a5c80501895b748a6137b8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4e0c7d6632d2d18dd2a8e9647dd4c7cf0d14dfdfb8cdcb593a6b30a252a96764.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4e0c7d6632d2d18dd2a8e9647dd4c7cf0d14dfdfb8cdcb593a6b30a252a96764.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
