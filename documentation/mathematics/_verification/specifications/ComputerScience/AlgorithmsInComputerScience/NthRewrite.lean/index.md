# Verification target: Nth Rewrite

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1427dfd3ec4fbf0c3c688cdf092e27bb75bcad8f",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NthRewrite/Variant13f8703d9b397e75b2cd0ba9dee47087b542bfe51e5d52eafc70a63bdc274ec6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/NthRewrite.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/NthRewrite.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1427dfd3ec4fbf0c3c688cdf092e27bb75bcad8f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NthRewrite/Variant13f8703d9b397e75b2cd0ba9dee47087b542bfe51e5d52eafc70a63bdc274ec6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NthRewrite/Variant13f8703d9b397e75b2cd0ba9dee47087b542bfe51e5d52eafc70a63bdc274ec6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.NthRewrite` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Defs` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Vector.Defs` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Nat` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/NthRewrite.lean/declarations/example-source-edition-12.md) | 10 | `declaration-track:96b203107bc93c6b5d755cc41cae49e9c27379ce0993d277deb3dfdb54a2ca13` |
| 2 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/NthRewrite.lean/declarations/example-source-edition-11.md) | 14 | `declaration-track:8df2d00a9610e3c2abbe55ad39d67dd3a274c483a897200286e0325cd1f52e4f` |
| 3 | `structure` | [F](../../../../../ComputerScience/AlgorithmsInComputerScience/NthRewrite.lean/declarations/f.md) | 17 | `declaration-track:8d1b0d1cbf0ff9dd11bf9dd9ba5666456dd0eba86d9e5274d35acb1caa220828` |
| 4 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/NthRewrite.lean/declarations/example-source-edition-13.md) | 22 | `declaration-track:f623c285fdbd41b8a2d231c768f5cb2a519bfdb6d8c56f57fc52e6766929a612` |
| 5 | `structure` | [Cat](../../../../../ComputerScience/AlgorithmsInComputerScience/NthRewrite.lean/declarations/cat.md) | 25 | `declaration-track:ae4d911fbae00f3567ddd64d5a19213b110195a2ec19e4c6a27581a5e7e63f9a` |
| 6 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/NthRewrite.lean/declarations/example.md) | 34 | `declaration-track:1f4759b3d8214ad646a05348f1ccc70248c054d74221d0f09529b1eeeac5463f` |
| 7 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/NthRewrite.lean/declarations/example-source-edition-3.md) | 38 | `declaration-track:2a2d6322b71c633e759670e0c6a06ca5ca822be33ab577cb1a18d02fb27c4282` |
| 8 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/NthRewrite.lean/declarations/example-source-edition-7.md) | 41 | `declaration-track:432829aa2cfbd5ae2c7f28f7d2c62323ed46dbb821fa95a4e27bde0473ca2ffc` |
| 9 | `axiom` | [foo](../../../../../ComputerScience/AlgorithmsInComputerScience/NthRewrite.lean/declarations/foo.md) | 48 | `declaration-track:793bc9bfe19acf46764869261f2cab2f3947fcd289c31cf8595e092c14d7bba5` |
| 10 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/NthRewrite.lean/declarations/example-source-edition-8.md) | 50 | `declaration-track:5013e82e376c0d29eb6a029c9d073895b7d0623782b325e51d611dbc1869f069` |
| 11 | `axiom` | [foo'](../../../../../ComputerScience/AlgorithmsInComputerScience/NthRewrite.lean/declarations/foo-source-edition-2.md) | 53 | `declaration-track:d46194c9560d8442b527e52472dd54d5b5fbccc239540c1b16fe3b8cdca5bcd0` |
| 12 | `axiom` | [bar'](../../../../../ComputerScience/AlgorithmsInComputerScience/NthRewrite.lean/declarations/bar.md) | 54 | `declaration-track:61ec6d6f8272d8cdce8c50f7b223fe1330ef427a120806b9ce66c37cf48a3222` |
| 13 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/NthRewrite.lean/declarations/example-source-edition-6.md) | 56 | `declaration-track:3dc7bc6608075ef5ccbe1fc47d8705970cfb614cb1ca4e4d8b15b4b13d08b3b9` |
| 14 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/NthRewrite.lean/declarations/example-source-edition-4.md) | 63 | `declaration-track:2cd071f72b022c9fa61402b49acd4978f7758cb66f533a6654fbe859ee0bcc06` |
| 15 | `axiom` | [wowzer](../../../../../ComputerScience/AlgorithmsInComputerScience/NthRewrite.lean/declarations/wowzer.md) | 67 | `declaration-track:8c9b2261f58bb341fa2a62e83a946ab837db24b163768a6c591020a04c9d564c` |
| 16 | `axiom` | [kachow](../../../../../ComputerScience/AlgorithmsInComputerScience/NthRewrite.lean/declarations/kachow.md) | 68 | `declaration-track:84335483b67304575f3e4664297a5626e558c6334e29b0517eae5ede48aa6793` |
| 17 | `axiom` | [pchew](../../../../../ComputerScience/AlgorithmsInComputerScience/NthRewrite.lean/declarations/pchew.md) | 69 | `declaration-track:67925664f6454aa279e1cd07518d7591c71b3e15f62a47a89d8276382fe82f58` |
| 18 | `axiom` | [smash](../../../../../ComputerScience/AlgorithmsInComputerScience/NthRewrite.lean/declarations/smash.md) | 70 | `declaration-track:8c8870606141e2bf2a5ef63be76305c114645a56fa8faadb6126525f2bf24397` |
| 19 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/NthRewrite.lean/declarations/example-source-edition-5.md) | 72 | `declaration-track:2d300ae36b900dea19a0e41ed149d8655cfda779ee599671304b49646846cd52` |
| 20 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/NthRewrite.lean/declarations/example-source-edition-10.md) | 85 | `declaration-track:85ec2564e640d1ddc9cd684231016b6fec1a538abc49cb85dfe813da7c55355b` |
| 21 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/NthRewrite.lean/declarations/example-source-edition-2.md) | 91 | `declaration-track:25d5f0e5dc6b693105f88968e4a08317da4989b300d5b620108484153d0c4822` |
| 22 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/NthRewrite.lean/declarations/example-source-edition-9.md) | 97 | `declaration-track:65b606a9a6e37e232158dd10655c1cc78a1d5362ea4cf47c51cab01289ac592e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=658c2485577b880e1702aa623eae8772c8e95521f8aa4350e29eac3676567cfb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NthRewrite/Variant13f8703d9b397e75b2cd0ba9dee47087b542bfe51e5d52eafc70a63bdc274ec6.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NthRewrite/Variant13f8703d9b397e75b2cd0ba9dee47087b542bfe51e5d52eafc70a63bdc274ec6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
