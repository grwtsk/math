# Verification target: Trace Digest

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "470dfd70c1f25d129d5fdce3fd8acc1eeddb72ac",
  "lexical_observation_count": 159,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variant4153849d26a20b5f8f60191bcd2a3b3ee11f26de80394368140c746886c29265.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `470dfd70c1f25d129d5fdce3fd8acc1eeddb72ac`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variant4153849d26a20b5f8f60191bcd2a3b3ee11f26de80394368140c746886c29265.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variant4153849d26a20b5f8f60191bcd2a3b3ee11f26de80394368140c746886c29265.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Rhetorical.Kernel.FiniteGram` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Rhetorical.Kernel.Manifest` — import line 2; external provider; requires a separately pinned dependency.
- `DAF.Runtime.Manifest` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Digest](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/digest.md) | 25 | `declaration-track:02a43870e3a079bd89eddb108c52fb235470fc7c3194544d2110bdac03206988` |
| 2 | `abbrev` | [WireString](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/wirestring.md) | 26 | `declaration-track:ac9fba19983f8656d535a79befe6a363d3a441f6c6df807479bdc47023d45957` |
| 3 | `abbrev` | [ExactComplex](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/exactcomplex.md) | 27 | `declaration-track:45108a5ccd526a28a322500878d479b3648d070e40546057d68289c5c5fa24eb` |
| 4 | `def` | [maxDimension](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/maxdimension.md) | 29 | `declaration-track:849a426ff5430159b97a1adb464bf20ab448ebf6d4f067045c2449fdee5190b3` |
| 5 | `def` | [maxRelationReports](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/maxrelationreports.md) | 30 | `declaration-track:20089bf25d38745ba31219abcb5439c5a7629913e2f2d18b5a822fa253f758eb` |
| 6 | `def` | [maxRhetoricalFrameBytes](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/maxrhetoricalframebytes.md) | 31 | `declaration-track:127bb721969b73380e560d2d38218fd8134a9b94785da99924ef9d0512f3e5e3` |
| 7 | `def` | [frameOverhead](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/frameoverhead.md) | 32 | `declaration-track:26a4f84fcf2f1489040617eb9145855c4ec581e83b5c91505e4bee048dd4ea9f` |
| 8 | `def` | [traceMagic](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/tracemagic.md) | 33 | `declaration-track:1a62744188e33438894e1161ce95c29f53a532c0c0c6be4d684f6cb6eb520c3a` |
| 9 | `def` | [problemMagic](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/problemmagic.md) | 34 | `declaration-track:7a2833b2fbdf60add76a7dec25d76f74a6ad4b1ffacb3c85946ab5aef784b526` |
| 10 | `def` | [decodeI64](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/decodei64.md) | 36 | `declaration-track:a18a52019311ad6c3053e74c321b4c5290af963fcab558cdf1766f7f7610e2cb` |
| 11 | `def` | [parseI64](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/parsei64.md) | 40 | `declaration-track:efeb26c3db797ce32d04fc1addb8153e3efc99d0f622005e0b4ad88e62f6d10f` |
| 12 | `def` | [parseRational](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/parserational.md) | 42 | `declaration-track:d7041eeaf5a6e16b26f0addad7a195f2a7f8e06f1a5821c65923fb5eeccb3f2c` |
| 13 | `def` | [parseComplex](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/parsecomplex.md) | 50 | `declaration-track:8cc2c244cfa0e44463ebc8f22f0984c2c4f7970843892a0051f5b3c20e9e3cb7` |
| 14 | `def` | [encodeI64](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/encodei64.md) | 53 | `declaration-track:7f33c87ff4122105633102a89e1bfcbf3cbef8038b747d698ec7b102fb12211a` |
| 15 | `def` | [encodeRational](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/encoderational.md) | 62 | `declaration-track:f06383c170aee3218780445caf8c15fc17694c3a026532261a8fcaa878fbb2e4` |
| 16 | `def` | [encodeComplex](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/encodecomplex.md) | 66 | `declaration-track:cb1421ee733c1d6c0119b7326eb6d373e03d178cf31501d3dfd905c9f4ac0a96` |
| 17 | `def` | [exactComplexToComplex](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/exactcomplextocomplex.md) | 69 | `declaration-track:a93f24b9b57e18a2744fed5e0fc69d4090befc73485cd6ca576d56046c0df624` |
| 18 | `structure` | [ExactGram](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/exactgram.md) | 72 | `declaration-track:ebe9f7f2585afd5bc5e587f0411339055db155c46a58e76844d232550a0d99e5` |
| 19 | `def` | [ExactGram.Valid](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/exactgram-valid.md) | 77 | `declaration-track:009b519519385bb26f71e5828d8881ae88e8505b949bbb2b54b38c9442f3b052` |
| 20 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/instance-source-edition-21.md) | 81 | `declaration-track:ed6f579c0e44fbe297a4b849cff7916dfa96d4611eb3008e2a83841d51b1bc97` |
| 21 | `def` | [ExactGram.at](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/exactgram-at.md) | 85 | `declaration-track:cd411d153d13e3cbe937c94e89d0c5d37dfe07527ef2349b0f1139f30828f6e0` |
| 22 | `def` | [ExactGram.Hermitian](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/exactgram-hermitian.md) | 88 | `declaration-track:34488d8787d955a032d85bd676985b7b90e6d34393f4d09825c63a76a96a89f6` |
| 23 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/instance-source-edition-13.md) | 93 | `declaration-track:a7c5f9377aa602644c7ff1cc5533a73e2d41172fd9e4e4c90e6ef987715cb6a6` |
| 24 | `def` | [ExactGram.encode](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/exactgram-encode.md) | 97 | `declaration-track:753603f818f2c8f9327319cff9126c59f07a860ee8f65c5e0b63752db1ca3d62` |
| 25 | `def` | [parseGram](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/parsegram.md) | 102 | `declaration-track:68faa57716c2f468861f8da1e5290a0ec27672229bceca2814ab2c65a3c1b27f` |
| 26 | `structure` | [ExactFactor](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/exactfactor.md) | 111 | `declaration-track:153adf771d7837ead649dd9081eefce39092aa03af5e14a3282c3f80813ae7d7` |
| 27 | `def` | [ExactFactor.lowerAt](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/exactfactor-lowerat.md) | 118 | `declaration-track:aeaf4d9dae7e6417e92488aee2482cb4ac53ea3062f86e9169afc20900ca19ca` |
| 28 | `def` | [ExactFactor.Valid](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/exactfactor-valid.md) | 122 | `declaration-track:709138f73959240d2c5b8325079427372e1aa7395efe91cd033715d79327921d` |
| 29 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/instance-source-edition-22.md) | 138 | `declaration-track:f3009da4fbf5bd8654c849a2bf0955e2e4ece318e12e7331ab10429f043ac1cb` |
| 30 | `def` | [scale](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/scale.md) | 142 | `declaration-track:4ad88f267542931ffd37ff4aecd89257b125ca7d49c84b89d7111d12c25173ee` |
| 31 | `def` | [ExactFactor.reconstructEntry](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/exactfactor-reconstructentry.md) | 145 | `declaration-track:389eef1b89f1094402fa1377cbae74b1951177f012655fef6e2ae68a0fab3771` |
| 32 | `def` | [ExactFactor.reconstruct](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/exactfactor-reconstruct.md) | 153 | `declaration-track:f6cdfcdfcde5e46e1d803b6adc12982f3cf07c411ed992a51f0819b3b7be2241` |
| 33 | `def` | [parseFactor](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/parsefactor.md) | 159 | `declaration-track:b7b77a6a7b33071655a3877641f96190cb3d637a6ce8234c2d34390ca982495e` |
| 34 | `structure` | [ManifestReference](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/manifestreference.md) | 170 | `declaration-track:3851e28291cf7ba5f35bc4f4acd1bd06e69b9a5549c4ee40c2dab55c9cc54781` |
| 35 | `def` | [parseReference](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/parsereference.md) | 175 | `declaration-track:6a294191c958cedd3b05a224213597ef7127a16bae1bdd818330a0b4fc40a3e3` |
| 36 | `def` | [ManifestReference.resolve](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/manifestreference-resolve.md) | 178 | `declaration-track:80f596dd0577821ccb7bf4f75be73ffa31a1f3f79371180a65a8d92c141de179` |
| 37 | `def` | [parseBool](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/parsebool.md) | 185 | `declaration-track:a02ad71be001099a4e67e5d553123b3dc5070e18c83f52dbdccbbf5827ba54ad` |
| 38 | `structure` | [PointReport](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/pointreport.md) | 191 | `declaration-track:af18389d2d26de0d4b58689485c409dbb7766676367d54da893b8dc5033e8bd9` |
| 39 | `def` | [parsePointReport](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/parsepointreport.md) | 201 | `declaration-track:063b06af1a2b6661ce77a3555227c9186d37ea9ed29a32fc6d938ea3a09edfdc` |
| 40 | `structure` | [NormalizedRealReport](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/normalizedrealreport.md) | 214 | `declaration-track:b0d4ce4be5051566f8ad83e5a4b3ca91bf891a689e5d10ed15ed575e829eb7cb` |
| 41 | `def` | [parseNormalizedRealReport](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/parsenormalizedrealreport.md) | 219 | `declaration-track:fda922303f13f45c9634e1a4277b524c9194457fb5ab09064e9711e300b20890` |
| 42 | `structure` | [SimilarityReport](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/similarityreport.md) | 226 | `declaration-track:8e2bc48ab6d9d2a072b37583ac8c7a11d20474eef44f99183c68d87019ba5c7c` |
| 43 | `def` | [parseSimilarityReport](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/parsesimilarityreport.md) | 234 | `declaration-track:70bd63297881201d62bb1145eaf1f8a6ef42a32347e4f7e12ac004523bd0a3f7` |
| 44 | `structure` | [ImplicationReport](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/implicationreport.md) | 244 | `declaration-track:ec37bf3e80b60c5f6edbbc1941a8a71275d3e61baf95d40fb182d3b43929e5a5` |
| 45 | `def` | [parseImplicationReport](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/parseimplicationreport.md) | 252 | `declaration-track:67216bea12eaa6100228cc7db84dbfaba997e3be86fc47fe9846d13996e87f22` |
| 46 | `def` | [parseOptionalRational](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/parseoptionalrational.md) | 262 | `declaration-track:c97dd3a18a0fd1aa2fa05720cca51e6db34691242bfd687886d96bcedb9e1ee4` |
| 47 | `structure` | [ExactOperator](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/exactoperator.md) | 268 | `declaration-track:a366033152b46cb4c60c0306f9d27db5f67fa735eb663610044b9fa41739af50` |
| 48 | `def` | [ExactOperator.Valid](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/exactoperator-valid.md) | 273 | `declaration-track:6d7931fdcaa142f4fb2b68fb5e3666b09ae4a6df9e38063f03ac5adbfccad7ad` |
| 49 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/instance-source-edition-4.md) | 277 | `declaration-track:1f93eddbdb0180e4d4012517110d7b584e9534669860ffa989f0f0dec3b6d917` |
| 50 | `def` | [ExactOperator.at](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/exactoperator-at.md) | 281 | `declaration-track:0d018b05280f0dcca242861afa67c3c9c328ce561ff2a088c585243229757680` |
| 51 | `def` | [parseOperator](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/parseoperator.md) | 284 | `declaration-track:686eeab733acee1a2ba38c44bc602c6263827f867e18167de04243b11d17027e` |
| 52 | `structure` | [OppositionProfile](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/oppositionprofile.md) | 292 | `declaration-track:c8e1b6ea6c9198fb80161cba002bba7f449ca54c625e84e69da509b9c9c1de7a` |
| 53 | `structure` | [OppositionReport](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/oppositionreport.md) | 297 | `declaration-track:bcfc60795d9f3fcfbf079a12ab269aa4ec8ffe199d882fa840a699e32468813f` |
| 54 | `def` | [parseOppositionReport](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/parseoppositionreport.md) | 307 | `declaration-track:42511f7373748c2dbe185f75c9116ddf9e355d7f84b5fc882d3c2ec841c2e582` |
| 55 | `structure` | [AnalogyReport](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/analogyreport.md) | 326 | `declaration-track:94b15e5a89da926508e3a9e8c4901496007a8234877536fa6f05c39be88d7b5c` |
| 56 | `def` | [parseAnalogyReport](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/parseanalogyreport.md) | 336 | `declaration-track:029490338e01ae919664d0a704493d94ed743c3ddfe9477e374518e1bb8bb8de` |
| 57 | `structure` | [ProblemPoint](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/problempoint.md) | 352 | `declaration-track:de8714da36b9b6238156a3ed04b99f70a770dd01abd25a4991cd440c58d7eda3` |
| 58 | `structure` | [PairQuery](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/pairquery.md) | 357 | `declaration-track:58f85449bd9d38ab9fa0c48281baedcbc410cf994c786f72b1a02f167b773720` |
| 59 | `structure` | [ProblemImplication](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/problemimplication.md) | 362 | `declaration-track:ee6e98ba7f5322c2e9adfdd8120832e77ed4b62216eff977225cb33ca73b109a` |
| 60 | `structure` | [ProblemOpposition](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/problemopposition.md) | 368 | `declaration-track:7b84a5ff8670d69b0581a479c4b5b602c7a11e3f9470777478b5a67f151af59f` |
| 61 | `structure` | [ProblemAnalogy](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/problemanalogy.md) | 374 | `declaration-track:b42dec6cc1bb87502b14d463dfac438dd0897bc134b078b173fcc09eb78d9def` |
| 62 | `structure` | [RuntimeProblem](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/runtimeproblem.md) | 381 | `declaration-track:309a9a6fe3ddd80d8812a5505cee0413785d57ddc1588a0090e3332c9e6633bf` |
| 63 | `def` | [wordBase](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/wordbase.md) | 392 | `declaration-track:104caaba56f0e1f10bc63ea65b6225aa85498c3aa99a8df235ccb2edb3c59dc8` |
| 64 | `def` | [pairKey](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/pairkey.md) | 394 | `declaration-track:41310ceed8d338ab79b86240b4f03b8380321afc09fc41a478432ac3389aeb60` |
| 65 | `def` | [implicationKey](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/implicationkey.md) | 397 | `declaration-track:235c94645ef9c33be747201c7c9a9651ef17931be58da0d7557821167a65d3f9` |
| 66 | `def` | [oppositionKey](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/oppositionkey.md) | 401 | `declaration-track:9ba80e6f07325fb91bd379c2b32fa6b9c0df1681b3e235956b15a598d2d4865f` |
| 67 | `def` | [analogyKey](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/analogykey.md) | 407 | `declaration-track:ba9abef0bf1d12d12a89d89f636149ed124f777300374194986ee27f2d04cbd6` |
| 68 | `def` | [RuntimeProblem.Canonical](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/runtimeproblem-canonical.md) | 411 | `declaration-track:688aaecbbd119352fa205e22dede79bb2f073a2d750505aa88cb1a0d808145be` |
| 69 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/instance-source-edition-6.md) | 426 | `declaration-track:2ff504ca96d44f49584d64cd74508792696e21d20a73d7ac6d63156e48675f7f` |
| 70 | `def` | [parseProblemPoint](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/parseproblempoint.md) | 430 | `declaration-track:ad6ec4d813e7f6b76b2d0c808f322aa4723479cc71792818bd004607aeda2f93` |
| 71 | `def` | [parsePairQuery](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/parsepairquery.md) | 435 | `declaration-track:0a4f7c4c6c0481f51f120ef0c58012a01fa8dfc2f590bfbc815fa5a8900239e5` |
| 72 | `def` | [parseProblemImplication](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/parseproblemimplication.md) | 438 | `declaration-track:39a2f57023742532923e7ae8aca230a788f02d4d2b20ba80ec36002baa1d2fa7` |
| 73 | `def` | [parseProblemOpposition](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/parseproblemopposition.md) | 441 | `declaration-track:84e1adfcdfee3a7b7c9a4de7551c523a063184c00b05adcb2d7f8f733ca8e368` |
| 74 | `def` | [parseProblemAnalogy](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/parseproblemanalogy.md) | 450 | `declaration-track:f88a0c14b1be585d42eeeacfc5acf093a801249732aec5d773743ad797333de8` |
| 75 | `def` | [parseProblemPayload](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/parseproblempayload.md) | 453 | `declaration-track:9650f3c5cf9bc8bd9bc22cc25ea286640ab5e0dad8c30a74dc37fd6d0b752d50` |
| 76 | `structure` | [RuntimeTrace](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/runtimetrace.md) | 475 | `declaration-track:aa06934ebf8d365767395fc4dc353272e2cf972e23ff2e6d9543f124a17caa36` |
| 77 | `def` | [parseTracePayload](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/parsetracepayload.md) | 492 | `declaration-track:635dafa5c73f3342dd41a7d05b1e43e71943bd7a2efe8bd69b9089462c94fff8` |
| 78 | `def` | [decodeRhetoricalEnvelope](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/decoderhetoricalenvelope.md) | 537 | `declaration-track:6199f602ce7e9a6d3b16ac97e4c024c3aa530a8f280a5bc0bd38fe0230a27b27` |
| 79 | `def` | [decodeTraceEnvelope](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/decodetraceenvelope.md) | 551 | `declaration-track:56cc4731b17c1d6811c9fcc62c79ee176e56d313d73328eb44ea9d70bc8555b1` |
| 80 | `def` | [decodeTrace](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/decodetrace.md) | 555 | `declaration-track:ef521000e8f77e2778326a913b2ceb35e5332c70a6f52b7739f980e966a420b0` |
| 81 | `def` | [decodeProblem](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/decodeproblem.md) | 560 | `declaration-track:a632484db1f5e0daaef79197e2c61ef5f7700be1ee8fba0b529a8e025e5be6ed` |
| 82 | `def` | [ExactGram.regularized](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/exactgram-regularized.md) | 564 | `declaration-track:797a398dcc8697bbdf0b29a2ff351365c431b20cfe75439d52cd4e6955deb53a` |
| 83 | `def` | [hexDigit](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/hexdigit.md) | 572 | `declaration-track:46be9ec2f3f882d5118d373d6bccadf918f90f111456f94ebeebffd66664e0df` |
| 84 | `def` | [digestHex](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/digesthex.md) | 575 | `declaration-track:47390604b44af349b6049cf612f9ab4fd8001ad4f938fb5df4837d2dcb85309d` |
| 85 | `def` | [exactKernelIdentityPreimage](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/exactkernelidentitypreimage.md) | 581 | `declaration-track:c1ac2e87a874df1ae7b011e35bba9e02d4d2607903a0caefc58b918339bca463` |
| 86 | `def` | [expectedKernelDigest](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/expectedkerneldigest.md) | 585 | `declaration-track:d7cfa5b01d2aed79f3602aa1cd3d55d0c8060d10ed1216ff9146617a382a78ed` |
| 87 | `def` | [expectedKernelId](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/expectedkernelid.md) | 589 | `declaration-track:7c49209da7ca13dfd1875a193cffef64a3cdd029f99994ae6cb0ae9b866b3795` |
| 88 | `def` | [kernelDigestFromPreimage](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/kerneldigestfrompreimage.md) | 593 | `declaration-track:b4e6b98cb1fddc7eead746ea31d525e050188f6a5262695d57c5950efb127545` |
| 89 | `def` | [kernelIdFromPreimage](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/kernelidfrompreimage.md) | 596 | `declaration-track:9df961e91370bcd37f17bdfa0f45944d601d01b241ba0e02d50d028f54abc96d` |
| 90 | `def` | [RuntimeProblem.pointBindings](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/runtimeproblem-pointbindings.md) | 600 | `declaration-track:97c76ed0f1ded15c3438ac0521c690efab46b79f24891f87de94a3882a29caf5` |
| 91 | `def` | [RuntimeTrace.pointBindings](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/runtimetrace-pointbindings.md) | 604 | `declaration-track:e0ab9b6fff94612d6c22e01d8bdcafe3ca44af9928c7afc45a846a42967b2ff7` |
| 92 | `def` | [RuntimeTrace.similarityQueries](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/runtimetrace-similarityqueries.md) | 608 | `declaration-track:e9b170a98190996059a8cef64053e68e42c9baa4d02d47e75c64cb838086d854` |
| 93 | `def` | [RuntimeTrace.implicationQueries](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/runtimetrace-implicationqueries.md) | 611 | `declaration-track:97db9d57bb31667fa36d001bc21eefa5150e1266c8ea489200a75df350bccda9` |
| 94 | `def` | [RuntimeTrace.oppositionQueries](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/runtimetrace-oppositionqueries.md) | 616 | `declaration-track:b16ce116e9478030c1c820626e6d9243c40febe4140de4094cef50aa89425a9c` |
| 95 | `def` | [RuntimeTrace.analogyQueries](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/runtimetrace-analogyqueries.md) | 621 | `declaration-track:beea3cc0a2fb5a8ab96cb4c94543a4484a061cae8275c82fbfae72a17b205af1` |
| 96 | `def` | [OppositionReport.ProfileBound](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/oppositionreport-profilebound.md) | 626 | `declaration-track:d5d5042c5f8ccd9b8a5649f9ca6ca93a7014c34b682ba3ab633efec75075c3b9` |
| 97 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/instance-source-edition-3.md) | 634 | `declaration-track:185fbcc8163b47fc10af3237f8f7cebeceb3fbd46b5403109a92025654f54bc5` |
| 98 | `def` | [referenceMatches](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/referencematches.md) | 639 | `declaration-track:e2dbee32c70eab6b95fdbd4a26f24401f655fe3f74c9707c09ff8366e6c29043` |
| 99 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/instance-source-edition-11.md) | 643 | `declaration-track:853c2b67c453b81b489d73b43f5b72c4c0f8c5ad71d524ea0ecde6486cfe4548` |
| 100 | `def` | [complexNeg](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/complexneg.md) | 648 | `declaration-track:3c7cd67d6f8930f1204457b598b0867b121d21fd9a796fb69511e77c69288795` |
| 101 | `def` | [complexSub](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/complexsub.md) | 651 | `declaration-track:bdfa446c3ffc4e3a5fbf6276bfcfb19f3db092c13613a9bc0b683133a36763fa` |
| 102 | `def` | [ExactFactor.symbolicCoefficient](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/exactfactor-symboliccoefficient.md) | 654 | `declaration-track:10640630bbe6542b6dd912974014039f7564ad50cd5e7b3f083ba4efe5ba25ba` |
| 103 | `def` | [ExactFactor.symbolicColumnWire](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/exactfactor-symboliccolumnwire.md) | 659 | `declaration-track:c82bf92e567a3fb4a2af0c9c126b3109a3d4cebc05c7a31ee90955b2c95f8acf` |
| 104 | `def` | [ExactFactor.symbolicInner](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/exactfactor-symbolicinner.md) | 671 | `declaration-track:c0c62dc93f97f976ba44c6681f4ee0f42fd4781aeda8f1a65b1d78862353ded6` |
| 105 | `theorem` | [ExactFactor.symbolicTerm_eq_reconstructTerm](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/exactfactor-symbolicterm-eq-reconstructterm.md) | 680 | `result-track:60f86c97b6d295ae1a8e26a461cc8950b7362f633576125adfcab98a41627fed` |
| 106 | `theorem` | [ExactFactor.symbolicInner_eq_reconstructEntry](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/exactfactor-symbolicinner-eq-reconstructentry.md) | 701 | `result-track:3cb4b43c7d63c0dc200931099718cb89c1d30936d7c59370ef12c5d0438918a2` |
| 107 | `structure` | [SymbolicGramFactorCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/symbolicgramfactorcertificate.md) | 711 | `declaration-track:c60f86bb4562e9bc59c8b4fc3349c90dd14711d5e0cbfaaac3bda07a602bba81` |
| 108 | `def` | [ExactGram.vectorInner](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/exactgram-vectorinner.md) | 718 | `declaration-track:3e7613cc3d916ac426c2d9a66f01394066e268ecf9475401f7d61a89f398d883` |
| 109 | `def` | [ExactOperator.compositionAt](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/exactoperator-compositionat.md) | 728 | `declaration-track:7397d1217df65e1e1637f97144ababfefbd1049eca20e048d2e618e7d3ad176a` |
| 110 | `def` | [ExactOperator.IsInvolution](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/exactoperator-isinvolution.md) | 735 | `declaration-track:9a135dd794cbed09451d4542201fb8793ffc490f64b260198be821e5ad134eae` |
| 111 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/instance.md) | 742 | `declaration-track:0eea779b7a061bc94f2592994c9a4a508f5c7de7d23e20bf188c5ad584acf186` |
| 112 | `def` | [ExactOperator.PreservesGram](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/exactoperator-preservesgram.md) | 746 | `declaration-track:c518e03b13f34e8a58280a9677f4bdda2716e83ce58c96cf628662a851d5e2ca` |
| 113 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/instance-source-edition-9.md) | 754 | `declaration-track:760080854d61590f975541c32808e78204cdf8d2aeddea967a3d9fe46022eade` |
| 114 | `def` | [basisCoordinate](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/basiscoordinate.md) | 759 | `declaration-track:50a6013c6afa4a821a44ac4a1fee088eaf0714606f2ee2a72bd6237b2a0f1cd6` |
| 115 | `def` | [displacementCoordinate](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/displacementcoordinate.md) | 762 | `declaration-track:9939050050db1da5ad1dba09a08e64a23c36edef4c03cd17a3929dc1cf41fc32` |
| 116 | `def` | [ExactGram.displacementInner](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/exactgram-displacementinner.md) | 765 | `declaration-track:fcb665ff7a6cdae586c1d514860c0e5ef4923cc3ab3066a91d80c2c12f7b562c` |
| 117 | `def` | [ExactGram.displacementNormSquared](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/exactgram-displacementnormsquared.md) | 771 | `declaration-track:ecdcd6b0bf201b24e15aafebdca4be623015ff5db664bfea55d48128a06fa35e` |
| 118 | `def` | [ExactGram.displacementResidualSquared](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/exactgram-displacementresidualsquared.md) | 775 | `declaration-track:72b49f1a1e62fabd1cbf1391e7a19106d21777e1d8e1148e519955ac93f28f32` |
| 119 | `def` | [ExactGram.equalDisplacements](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/exactgram-equaldisplacements.md) | 782 | `declaration-track:86d68a42acbb522a2b33d4dc71b9e46d260540084676ed4ff8ce5513eb5160fe` |
| 120 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/instance-source-edition-15.md) | 788 | `declaration-track:c383a34b540019437c96795b4f96230c016e93ef8ea7f93d829362c36e9ffa46` |
| 121 | `def` | [ExactFactor.columnsAreAntipodes](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/exactfactor-columnsareantipodes.md) | 793 | `declaration-track:268477b6a901e8929063f78f9c79aaa5aa29617e72e0c3b10cd8d6451b294d5a` |
| 122 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/instance-source-edition-14.md) | 799 | `declaration-track:c2e6ec1abbc5fc91dab9dcc633f721d8c359dba526f3150e412bcb132331b6cf` |
| 123 | `def` | [ExactOperator.profileResidualSquared](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/exactoperator-profileresidualsquared.md) | 804 | `declaration-track:fb60f8dda0d66db5ab2e9a4fab53508a1b0ed05a3f9492ee00dd412ee9f805ea` |
| 124 | `def` | [RuntimeTrace.hasRole](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/runtimetrace-hasrole.md) | 810 | `declaration-track:f1814c19ed634a53d0072422df61b8e668510d5c5e6f5560bfe8d663ec0b05c8` |
| 125 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/instance-source-edition-16.md) | 813 | `declaration-track:c4f8a221c55036e39ec7770a17fe58ab6b4f95c8267ac5aa19645427dbe1baca` |
| 126 | `def` | [NormalizedRealReport.Matches](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/normalizedrealreport-matches.md) | 818 | `declaration-track:1b39e1fe76fde105db36cf4ce0518ffd3369054542ba3cdcb3a6c1919a5e69c6` |
| 127 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/instance-source-edition-17.md) | 825 | `declaration-track:d4e70adc48c2e6988ead972d1394788243d27e99564ae1e82bf13c8f8af3b9e8` |
| 128 | `def` | [PointReport.Matches](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/pointreport-matches.md) | 831 | `declaration-track:ef0a122b42a21c9edba760095710d0d64b2402bf1f1fee4d04712b6facf8d6f7` |
| 129 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/instance-source-edition-20.md) | 839 | `declaration-track:e6f11a93401b5abc1f7133dd3df1e03ce05a3c5b08ab4f4355f0d4f991f5c9e9` |
| 130 | `def` | [SimilarityReport.Matches](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/similarityreport-matches.md) | 844 | `declaration-track:be8708eafdd246f86efb6d36ae566c81c49239543e8394d021f4b2cf635f5873` |
| 131 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/instance-source-edition-18.md) | 857 | `declaration-track:e537d56d6b30ed2ba00fdc09d2ac83aeb888fe8d73cefd0fd2ca38bcb93db01b` |
| 132 | `def` | [ImplicationReport.Matches](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/implicationreport-matches.md) | 862 | `declaration-track:a6a04f30017223b27fff35eaf8ad8df176caf728caeb628e9fa5036d92b97d8f` |
| 133 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/instance-source-edition-2.md) | 872 | `declaration-track:11fd84f2051d66c366422bac11506a68233bbd40b2262571a892c604be28d6c3` |
| 134 | `def` | [OppositionProfileMatches](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/oppositionprofilematches.md) | 877 | `declaration-track:0702d2baf870f6e2920cfcf51ad93245286133767cad1ff36d438fbefeff4f6e` |
| 135 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/instance-source-edition-7.md) | 887 | `declaration-track:6e346677afe2fcac995a366b07f084081a085128446cff23f2a751c5f99af706` |
| 136 | `def` | [OppositionReport.Matches](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/oppositionreport-matches.md) | 893 | `declaration-track:55ec8934a233a5fab37032d66a7a87652519433b0069cdacf434865e3e8fb8d5` |
| 137 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/instance-source-edition-10.md) | 908 | `declaration-track:7cc6fc4dff05aaa71f15d4842f8009a5367283590bfa424b47021c9cd4a7d561` |
| 138 | `def` | [AnalogyAffinityMatches](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/analogyaffinitymatches.md) | 913 | `declaration-track:d555f8dcfb55948e540d1a9feba8412fc0e3e17a9b49d260d104decb60bf9828` |
| 139 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/instance-source-edition-12.md) | 918 | `declaration-track:a1d03012d6ba74589c2de671a2bd85ba9658aa57a50f306a7cfdc640fb80083e` |
| 140 | `def` | [AnalogyReport.Matches](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/analogyreport-matches.md) | 923 | `declaration-track:6a4a4ea237a1b46a5cfe9ccd83144f6c222be4a02d59868e4d56cdbdf5ce6deb` |
| 141 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/instance-source-edition-19.md) | 944 | `declaration-track:e6b4825f7f4c40a1337a1409b0e0ad5e567ff7efff7159a2744eeaa68c606a15` |
| 142 | `structure` | [CanonicalTraceCommitment](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/canonicaltracecommitment.md) | 952 | `declaration-track:55a5bb85a35e4938b933a897f683f94b07e5448639fae2b7a200237b4488d540` |
| 143 | `structure` | [ProductionTraceCommitment](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/productiontracecommitment.md) | 985 | `declaration-track:26c012f24de761951cdbfaeea16bdb0f37adc96e6faca77910ce2553b3807bf9` |
| 144 | `def` | [AcceptanceConditions](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/acceptanceconditions.md) | 991 | `declaration-track:87539d679d514edbbb58db81a5f9f8a9cf47dddcb35321f8eb864ddaec68bc1f` |
| 145 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/instance-source-edition-8.md) | 1032 | `declaration-track:709d4aa8702ada7a8f3ac2c2c2d7802cc3dcb1c8503babafb6bcc3ce3955b139` |
| 146 | `def` | [AcceptedTrace](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/acceptedtrace.md) | 1042 | `declaration-track:60e1a91bb1dde1139a7551df3f7a034989ae4963cb4a0b43dd8ab66a685275e1` |
| 147 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/instance-source-edition-5.md) | 1048 | `declaration-track:206fdb96430ab5f126e7675588543bab925d933d641c9568ca8c9d6d284fb9bb` |
| 148 | `def` | [verifyTrace](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/verifytrace.md) | 1055 | `declaration-track:ddbf191e099c42c9de2c2aff13cd91f4bc814ce4436f9eccc4b6beb3bef19ba6` |
| 149 | `def` | [Represents](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/represents.md) | 1062 | `declaration-track:677a4a9dcace25af162144666e4f7ec78500ab8e4caafd80134bc4fc4f7547c6` |
| 150 | `theorem` | [acceptedTrace_represents](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/acceptedtrace-represents.md) | 1072 | `result-track:c8bb5b6212ad6fde05a626d0b7c7b9613d2ed141cf6dc221f4416b215ee3fc24` |
| 151 | `theorem` | [acceptedTrace_operation_preserved](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/acceptedtrace-operation-preserved.md) | 1087 | `result-track:ea85b1ed313fa450e661349f96431e9cdd292b380aec5dd0b0ebc4562c5bd789` |
| 152 | `theorem` | [acceptedTrace_point_norm_operation_preserved](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/acceptedtrace-point-norm-operation-preserved.md) | 1100 | `result-track:c7099a41f7ba0e940283664b9c539697386427cd5480c222c99e40341d59c4ed` |
| 153 | `theorem` | [acceptedTrace_symbolic_factor_operation_preserved](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/acceptedtrace-symbolic-factor-operation-preserved.md) | 1123 | `result-track:4881849b69ded404f238ee6364e0b9ccab61912506fcd5603c69811c52e60101` |
| 154 | `theorem` | [acceptedTrace_has_symbolic_gram_factor_certificate](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/acceptedtrace-has-symbolic-gram-factor-certificate.md) | 1141 | `result-track:33bda2ac717278b0917b52a725e7ef0f40c989624600576f7b5eccda7ca46bbd` |
| 155 | `theorem` | [acceptedTrace_similarity_operation_preserved](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/acceptedtrace-similarity-operation-preserved.md) | 1156 | `result-track:609ec7a014c4b62d4be15b5df2b6b140988d678986f90f4e1877ea70ad3c1296` |
| 156 | `theorem` | [acceptedTrace_implication_operation_preserved](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/acceptedtrace-implication-operation-preserved.md) | 1172 | `result-track:716c322c2ab8b7d310d300c974f489285e12b8b5a0fb3429c533028abe82776a` |
| 157 | `theorem` | [acceptedTrace_opposition_operation_preserved](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/acceptedtrace-opposition-operation-preserved.md) | 1192 | `result-track:93a3d168ef5f71b797c05f15cfb4eca5c65e48311245f870fc8941e6dc516135` |
| 158 | `theorem` | [acceptedTrace_analogy_operation_preserved](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/acceptedtrace-analogy-operation-preserved.md) | 1207 | `result-track:a30324a85ca4a1f54c0c12ba416dc91eb2f039e0d92a1ea0151807d2f297895d` |
| 159 | `theorem` | [verifyTrace_eq_true_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceDigest.lean/declarations/verifytrace-eq-true-iff.md) | 1220 | `result-track:c08b907e1807922a1a74b956b278f0fef9f99fdee580c98ac891abf1f2c18793` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=20a8086c4ed54c84b0d78f3bbb5d2543bc93e071ef569d800b8636a5e5b91801 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variant4153849d26a20b5f8f60191bcd2a3b3ee11f26de80394368140c746886c29265.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variant4153849d26a20b5f8f60191bcd2a3b3ee11f26de80394368140c746886c29265.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
