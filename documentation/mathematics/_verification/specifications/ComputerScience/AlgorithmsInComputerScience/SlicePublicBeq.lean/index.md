# Verification target: Slice Public Beq

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5a53156458ea060e4c91cf0deee712f7c6fec54",
  "lexical_observation_count": 87,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Varianta96d590d6fe8328167b9867de39112af96446cc8426351278b85d87a7040b7c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5a53156458ea060e4c91cf0deee712f7c6fec54`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Varianta96d590d6fe8328167b9867de39112af96446cc8426351278b85d87a7040b7c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Varianta96d590d6fe8328167b9867de39112af96446cc8426351278b85d87a7040b7c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Consumers.Collect` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Consumers.Loop` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.String.Termination` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/instance-source-edition-19.md) | 48 | `declaration-track:fdb31eca534f367982c046d78e745dba1b3b384eeb477f6d945022daf9c48e4a` |
| 2 | `def` | [beq](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/beq.md) | 62 | `declaration-track:c9ef1c66209bd9930859659f4748cd3e255f8fd235f9decc15a5405b618f33ef` |
| 3 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/instance-source-edition-18.md) | 70 | `declaration-track:f5e65a1f53f0d001044e4d3aeb5f95faa4cdb271713843627681053ac8e3fa92` |
| 4 | `def` | [toString](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/tostring.md) | 74 | `declaration-track:d85f2c914db596bffaeb98fa634312910210448ebab7e28b1a01d3d79b1d89aa` |
| 5 | `theorem` | [toString_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/tostring-eq.md) | 78 | `result-track:d79742babad9480744abcc6f8aea1206044b1b07ee499e85b00489b6bcbb768e` |
| 6 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/instance-source-edition-17.md) | 80 | `declaration-track:eb6dc0c3ac9310b4c07e5f3f2521db2da883332faf72c147611aeb8fecc703c6` |
| 7 | `theorem` | [toStringToString_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/tostringtostring-eq.md) | 84 | `result-track:91b943e5804014663a3a3d82202cfc65870ecf0de57bd37d6dd109bfb4c9065c` |
| 8 | `def` | [hash](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/hash.md) | 87 | `declaration-track:ede32f9bd403e7d7ca3a11445e933fedfdf28386a82ebcc084eedfb404401de4` |
| 9 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/instance-source-edition-15.md) | 90 | `declaration-track:d936e402c60fc8ef95b69819ef59bbc393f87a6423359190652879dcb18d3f2a` |
| 10 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/instance-source-edition-5.md) | 93 | `declaration-track:746d46e988141d79032601986622d2ee5c1e01c664d52abe6d4d57b0ddb58a13` |
| 11 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/instance-source-edition-14.md) | 97 | `declaration-track:bb459245fd8dd9a4f3d705216563e3ad413b18bdbc764139304ae3aa0a12f0f6` |
| 12 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/instance-source-edition-3.md) | 100 | `declaration-track:64c1dcd58ff6cf974f4a1f5afdfb609de2082c37cf0febd07c1846fe7f5aa13d` |
| 13 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/instance-source-edition-9.md) | 103 | `declaration-track:83c6ba296a63ba84e649b207f28cef370ece7937a515e1a6da7d969973d92e25` |
| 14 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/instance-source-edition-7.md) | 106 | `declaration-track:7e83ba84f18410c859457ea8867f783e178d894af1273ef4058d91471604c396` |
| 15 | `def` | [startsWith](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/startswith.md) | 129 | `declaration-track:f4cabf5b862a74d1b402a9ee20e7e4b3e52c1b6e7dcd7fa7412c7f7af357078f` |
| 16 | `inductive` | [SplitIterator](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/splititerator.md) | 132 | `declaration-track:15e0677c53d0f1e01364aac1aa53cfe0f7b4ff089da119a4d14ea3d0e5029fae` |
| 17 | `inductive` | [PlausibleStep](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/plausiblestep.md) | 141 | `declaration-track:73411faaa026c4cd1e317e76ae5716a6f20d35683af0c1ce71f8b3aa5eace8df` |
| 18 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/instance-source-edition-8.md) | 143 | `declaration-track:81c30b2899c71b743aa3a5ed74f4874b52c58801113b03348903f1d530e803cb` |
| 19 | `def` | [toOption](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/tooption-source-edition-3.md) | 171 | `declaration-track:a46f90afda68720e8fcea7e9220a73b66314d780c7ca8c20024c529feabba0eb` |
| 20 | `def` | [finitenessRelation](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/finitenessrelation-source-edition-2.md) | 175 | `declaration-track:7247ac6147585ca9034a185092f5aa82dbacc9ae93a4a4c4a83cc08ebf8317f5` |
| 21 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/instance-source-edition-2.md) | 193 | `declaration-track:1940fd44f203b2e16521b8a8494476a4973297075e75fe65eca973c0d2c37849` |
| 22 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/instance.md) | 196 | `declaration-track:10cd72fa62b89f15bed343a497c3c1aaa8c6c06c9dc488e56d5b0ccd525127ea` |
| 23 | `def` | [splitToSubslice](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/splittosubslice.md) | 217 | `declaration-track:86ef72abd7aba0edfda48a67d07736174a99db4f639f5577133dbfc77786fdcf` |
| 24 | `def` | [split](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/split.md) | 237 | `declaration-track:e9185e612ed86bdbcb2e6ac817527d7e9f8211a757696d59364e17c777397e46` |
| 25 | `inductive` | [SplitInclusiveIterator](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/splitinclusiveiterator.md) | 240 | `declaration-track:d3ab6507c4567d73df7f7000c13a9f6311c9ffee3f034d09cbc9cfbbc1c9e3c2` |
| 26 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/instance-source-edition-12.md) | 249 | `declaration-track:8efed98aa746b8d0c242b0b559dc1d34700124db1137f46cc7eb302304d97707` |
| 27 | `def` | [toOption](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/tooption.md) | 281 | `declaration-track:1e5f4d0c9f2624a10277979909aefa7527fef42b7e3af3e4883f76a2519d9edf` |
| 28 | `def` | [finitenessRelation](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/finitenessrelation.md) | 285 | `declaration-track:0d54996a510d5e917140a5a5f5820f2db5a75340c8c58cb021473a4e20ac09e6` |
| 29 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/instance-source-edition-11.md) | 303 | `declaration-track:8c3fc0fc65f424075ca806aec55a5a6088e7c7771ce4327e5d838061366860b5` |
| 30 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/instance-source-edition-6.md) | 307 | `declaration-track:798d8084cfa2cd22fba313cf58cba4fe560dc64dcca66e8520ea863db99db8ab` |
| 31 | `def` | [splitInclusive](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/splitinclusive.md) | 326 | `declaration-track:aa813a71c3c6ea3f63ed686d663e3b0f95f248ad6197d17248914773f58d4ee7` |
| 32 | `def` | [skipPrefix?](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/skipprefix.md) | 337 | `declaration-track:a6e6b90633cc2370b0f07c4e13d23cd893b3d9ffb060ba4ff79873c6897298cb` |
| 33 | `def` | [Pos.skip?](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/pos-skip.md) | 347 | `declaration-track:c9aa42711993b290d94d2526cf064124e2332cc71e25b9f6d5e987bd0dc0cbe3` |
| 34 | `def` | [dropPrefix?](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/dropprefix.md) | 365 | `declaration-track:5c46f5136766bb83b987c048993b5fc55f3535dd48be20069099699c11e13cbf` |
| 35 | `def` | [dropPrefix](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/dropprefix-source-edition-2.md) | 383 | `declaration-track:bef80a057be5d220cb9fd8368839eca728397eb559358ab6062089680d45de5b` |
| 36 | `def` | [replace](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/replace.md) | 402 | `declaration-track:40382748b91c51b45eee6ed6d4de031a9ff2c5d6bba8daba06b0daad3a8eddec` |
| 37 | `def` | [drop](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/drop.md) | 419 | `declaration-track:a4a751b192628d863910e5ed18a9dfc186a97e59e5c4e15aa8ff8ecfbe5f4464` |
| 38 | `def` | [Pos.skipWhile](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/pos-skipwhile.md) | 426 | `declaration-track:0933a42225d58c66b45e4c829c5a5de148f249700631b2f7e6e0d1cc8137cc58` |
| 39 | `def` | [skipPrefixWhile](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/skipprefixwhile.md) | 441 | `declaration-track:2cabcdf7b5884bdf97a66827c260d845a04280cfae47c92d1ab03b20e570babe` |
| 40 | `def` | [dropWhile](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/dropwhile.md) | 455 | `declaration-track:2db63ae10ce2e0f6ab31831cc59d5bfc074ae1486ecdb6bf2468905f53d28096` |
| 41 | `def` | [trimAsciiStart](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/trimasciistart.md) | 472 | `declaration-track:13628f7dafd3b6de36df3f3e58e911e4b9538c6d2f088a2723d4d2ffe3e5186c` |
| 42 | `def` | [take](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/take.md) | 488 | `declaration-track:6c8aea4ed325c1b3f8662437ef137838ed47591f80340ad87c3bc61816cf611b` |
| 43 | `def` | [takeWhile](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/takewhile.md) | 504 | `declaration-track:bd0c26c249c149ef403357f141f1444c7f1e3afe73b3782f8c2afe044b28cde9` |
| 44 | `def` | [find?](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/find-source-edition-2.md) | 519 | `declaration-track:e7b65f34cb7088d5b12612c492d3143ce2f67a58e5ecd33f1db6ef0092cd2d3a` |
| 45 | `def` | [find](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/find.md) | 535 | `declaration-track:285f4008557122df7f730b5a17df99404d247623ac7d5af9be437152b0032c33` |
| 46 | `def` | [contains](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/contains.md) | 549 | `declaration-track:af31f71257319fec637bfe547a086a57b23730626fa75fcef6b93c84d4160075` |
| 47 | `def` | [any](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/any.md) | 554 | `declaration-track:b10ca4308d49b1390447044d6d5347c503cfaf68b82c11e182305acb178c5571` |
| 48 | `def` | [all](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/all.md) | 572 | `declaration-track:ec79c7f2dab4a1e71edf6aeadead57cf2384b4a1366ad9e0f510f9642ea41e1c` |
| 49 | `def` | [endsWith](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/endswith.md) | 597 | `declaration-track:5d404636fae98fc57391cf6e432c6d5ce7a41b7c79553d7eb87bc689d6d2b82f` |
| 50 | `inductive` | [RevSplitIterator](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/revsplititerator.md) | 600 | `declaration-track:7b050b9c150b40e006bf14d55ecceef38a92e0d927b70d6e0f07c7578680a860` |
| 51 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/instance-source-edition-16.md) | 609 | `declaration-track:e651b7debcbc42753025e5c79c5df52f32ab6f0ec3fb189077668a0dac38e5d3` |
| 52 | `def` | [toOption](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/tooption-source-edition-2.md) | 640 | `declaration-track:45b4f64c06b31a23df840795726558fcef1adf79f7aa3cccead6838a0393b954` |
| 53 | `def` | [finitenessRelation](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/finitenessrelation-source-edition-3.md) | 644 | `declaration-track:c6a393529d819cdf22af72e766486206c9b2654bf89c3746ba60bc8a59b4c739` |
| 54 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/instance-source-edition-10.md) | 662 | `declaration-track:8a7c3b8d94bc309d5b09732f04ee549b16a22843da48e61ecbacb643b6c8f77f` |
| 55 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/instance-source-edition-13.md) | 665 | `declaration-track:a6162a7df0a485885a86df47281b97b6f0ef9dbdd640b58a719651a94cd1c3fa` |
| 56 | `def` | [revSplit](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/revsplit.md) | 685 | `declaration-track:740ba55f371d681adb035d5ddd4c59aff7408227ea4fd22d2289d177398567fa` |
| 57 | `def` | [skipSuffix?](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/skipsuffix.md) | 696 | `declaration-track:baf514ba1e80494245e3fb5d88baca8d3102e957d08a19c5142f860276edced9` |
| 58 | `def` | [Pos.revSkip?](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/pos-revskip.md) | 706 | `declaration-track:6fc8def3643d2b3a8e4f87e620a32afacc89d2320ff9b718f538bfcb3263e386` |
| 59 | `def` | [dropSuffix?](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/dropsuffix.md) | 724 | `declaration-track:2ba5175d8a988bccb892f0c750e07322fcc82d8614e5d0557d4e42ec8dca1c27` |
| 60 | `def` | [dropSuffix](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/dropsuffix-source-edition-2.md) | 743 | `declaration-track:d04ffa2627d9981f7e0c88d6f51a741d1bf45bf98195a72b63155b78cbd9dc5c` |
| 61 | `def` | [dropEnd](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/dropend.md) | 757 | `declaration-track:a61e72ab25fb133d0b0ce9e7e61c48d15d458c4bf5051f86922e2b4f354d5d6d` |
| 62 | `def` | [Pos.revSkipWhile](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/pos-revskipwhile.md) | 764 | `declaration-track:1f742892d670c8d3797cbcb0e760356c3dc19bf450ef5675c41a04c863abd35e` |
| 63 | `def` | [skipSuffixWhile](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/skipsuffixwhile.md) | 779 | `declaration-track:8d8c1996d4460fa255531233dd92d7bd50846e93186023b78bc744eedfbfcc57` |
| 64 | `def` | [revAll](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/revall.md) | 809 | `declaration-track:1e1909f8bc8949230458b8315e9e80d7a72f3fa470accb242e4ea3e7cab369c0` |
| 65 | `def` | [dropEndWhile](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/dropendwhile.md) | 822 | `declaration-track:2171b3043c60e45787b81a6def8882c2b6fdeb88b20ddeac779ed9ad738f3493` |
| 66 | `def` | [trimAsciiEnd](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/trimasciiend.md) | 839 | `declaration-track:946b827240cb94c63a8d569781901d787381f77b5f1fa179a111439131e91301` |
| 67 | `def` | [takeEnd](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/takeend.md) | 855 | `declaration-track:9843555ef32a54cc434d84af6ea2b11b3a0ccee9a7756ed733f69e9a2ae645d1` |
| 68 | `def` | [takeEndWhile](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/takeendwhile.md) | 870 | `declaration-track:caa44ee7f119afa4d2575666800fa3e6c1892ec073f2cd11eaf40b08af1e984e` |
| 69 | `def` | [revFind?](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/revfind.md) | 886 | `declaration-track:125d23d90c3acab81ba4bb4a974e481b91e656ce44a81b954c3b5b4468b9b69b` |
| 70 | `def` | [trimAscii](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/trimascii.md) | 904 | `declaration-track:1df16a27e90fa9b95eb7e5ae7eb2ee2be331864e2194ea657ec60789b7e3a025` |
| 71 | `def` | [eqIgnoreAsciiCase](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/eqignoreasciicase.md) | 910 | `declaration-track:2a1e7d34158be5c78ceede0fa8bc8c3c2fca5d8d8b4e5a45d37cf30a75b06009` |
| 72 | `def` | [lines.lineMap](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/lines-linemap.md) | 929 | `declaration-track:ce4c4bb91456e26157b6ad918f67cfec3af2142ceaa64f2d63fcf5b603f261d7` |
| 73 | `def` | [lines](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/lines.md) | 947 | `declaration-track:4e3f4f872253ebea400520502de214b7658e20cd1f171a2a0a3b05e18aeda0fb` |
| 74 | `def` | [isNat](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/isnat.md) | 976 | `declaration-track:924c4bca049e9cd808e246482e7a60c8f2c643d64b6553ccfb0a3bc07656acbb` |
| 75 | `def` | [toNat?](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/tonat.md) | 1014 | `declaration-track:0c0b1fb2554e6bad2900dd94ef787b8dc9961849e13254d0fed86bfed73291ea` |
| 76 | `def` | [toNat!](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/tonat-source-edition-2.md) | 1036 | `declaration-track:dcb928bd1c8ee6ac98ba7d5b7cd4c34e01eb53fd31836306e89589add7885b59` |
| 77 | `def` | [front?](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/front-source-edition-2.md) | 1050 | `declaration-track:c6474edd68bd503448b389cfd8790c4135a6258ede51bbb892b349b3a2eb8e36` |
| 78 | `def` | [front](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/front.md) | 1061 | `declaration-track:4fb671c3489302c59091a0df8f2e660564fe8923637aab76b2d07f763ee65dc8` |
| 79 | `def` | [isInt](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/isint.md) | 1087 | `declaration-track:a7538227135360db9c888cd9bad1b5f74dc35f680101cd4a0c33935fe889f2d0` |
| 80 | `def` | [toInt?](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/toint-source-edition-2.md) | 1117 | `declaration-track:a0787be08a06f8c3a27d2809ce84a2e69b1073c651ca669fa76ba726cb4e66a8` |
| 81 | `def` | [toInt!](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/toint.md) | 1140 | `declaration-track:5b10ed4908748cb08d85d9992b3ef55f55cc1dad3dbeb59fa7fc584193812935` |
| 82 | `def` | [back?](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/back.md) | 1153 | `declaration-track:c240b384142c850c6192095c403598a1e1db3413d06057e292928885700d5021` |
| 83 | `def` | [back](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/back-source-edition-2.md) | 1164 | `declaration-track:f9aef8e5fcae933288bfa5adede4757fac77d05ea4e908ab2143cfd66346a799` |
| 84 | `def` | [intercalate](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/intercalate.md) | 1175 | `declaration-track:6bec15ae4c99c3a0d7c392823e8a3e9d22d48db759f7048a5888b3e0b8a79b8c` |
| 85 | `def` | [join](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/join.md) | 1192 | `declaration-track:6b0e21cbb6cb034d029a161da13403f43725e9e4f2cca0036ec7bfa1f82ddd1b` |
| 86 | `def` | [toName](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/toname.md) | 1202 | `declaration-track:9920239984c7ce9794b53b2faffdb7215e075557dc359d05980965a98f1d06e4` |
| 87 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/SlicePublicBeq.lean/declarations/instance-source-edition-4.md) | 1205 | `declaration-track:7421445027a7559d43e49a31efa7a2cfd2946cbb9dfbbf64fd1981ba1fb345ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8f61f62869a6fa01eb32df2eac78bb728e091d51da9a33f8e952780d710700b8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Varianta96d590d6fe8328167b9867de39112af96446cc8426351278b85d87a7040b7c1.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Varianta96d590d6fe8328167b9867de39112af96446cc8426351278b85d87a7040b7c1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
