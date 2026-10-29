# Verification target: Arbitrary Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bee0f070febf3769a73ec9d54f1a5bfbf75aeaba",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Arbitrary/Variant66cd5fceaef48745dc3a78ba93168e7860116c4ccf159be502841a74c38dcdb3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ArbitraryPublic.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ArbitraryPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bee0f070febf3769a73ec9d54f1a5bfbf75aeaba`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Arbitrary/Variant66cd5fceaef48745dc3a78ba93168e7860116c4ccf159be502841a74c38dcdb3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Arbitrary/Variant66cd5fceaef48745dc3a78ba93168e7860116c4ccf159be502841a74c38dcdb3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Arbitrary](../../../../../ComputerScience/AlgorithmsInComputerScience/ArbitraryPublic.lean/declarations/arbitrary.md) | 47 | `declaration-track:3b62eb15fc532c52d6a451faf5f836cfb3b59128837e40ab374cc0446e783e5a` |
| 2 | `def` | [runArbitrary](../../../../../ComputerScience/AlgorithmsInComputerScience/ArbitraryPublic.lean/declarations/runarbitrary.md) | 58 | `declaration-track:37cd86f5fbfd9430f21bd09f24800e91b1a6d081e4fef528e889fb0f02f04766` |
| 3 | `instance` | [Sum.Arbitrary](../../../../../ComputerScience/AlgorithmsInComputerScience/ArbitraryPublic.lean/declarations/sum-arbitrary.md) | 67 | `declaration-track:94af20b4ac139b4164526a040284a0730b116770f467fe3068c89e0c02494bac` |
| 4 | `instance` | [Unit.Arbitrary](../../../../../ComputerScience/AlgorithmsInComputerScience/ArbitraryPublic.lean/declarations/unit-arbitrary.md) | 73 | `declaration-track:919958e16d57488e8e83deb65d7b0b53cd2d67722890f40dd78f90a39c20e312` |
| 5 | `instance` | [Sigma.Arbitrary](../../../../../ComputerScience/AlgorithmsInComputerScience/ArbitraryPublic.lean/declarations/sigma-arbitrary.md) | 75 | `declaration-track:273ae503c091a111b050531766fd55aeb642a222d44d07ec4799ded9e00c01bb` |
| 6 | `instance` | [Nat.Arbitrary](../../../../../ComputerScience/AlgorithmsInComputerScience/ArbitraryPublic.lean/declarations/nat-arbitrary.md) | 80 | `declaration-track:3914ee3af5eb487651056241e9c8b60b22ba4980150dcaf8f0d88090b19f1206` |
| 7 | `instance` | [Fin.Arbitrary](../../../../../ComputerScience/AlgorithmsInComputerScience/ArbitraryPublic.lean/declarations/fin-arbitrary.md) | 84 | `declaration-track:bbdd266ac36a22fd1714a37d2c4382b5fcf26eeb909fbf0e9392bfb4e3819538` |
| 8 | `instance` | [BitVec.Arbitrary](../../../../../ComputerScience/AlgorithmsInComputerScience/ArbitraryPublic.lean/declarations/bitvec-arbitrary.md) | 89 | `declaration-track:d2d00745ce838ca08a02acd64272bae4569b275c1e412e59f0b7749ff53411b3` |
| 9 | `instance` | [UInt8.Arbitrary](../../../../../ComputerScience/AlgorithmsInComputerScience/ArbitraryPublic.lean/declarations/uint8-arbitrary.md) | 94 | `declaration-track:4180eb4897a05261837f10acab8b587fe7b09872082622fbb6b1e963200162a1` |
| 10 | `instance` | [UInt16.Arbitrary](../../../../../ComputerScience/AlgorithmsInComputerScience/ArbitraryPublic.lean/declarations/uint16-arbitrary.md) | 99 | `declaration-track:3bc3544bffec62fa26803e105f47b856652b68e699e19482c93597ad028b954b` |
| 11 | `instance` | [UInt32.Arbitrary](../../../../../ComputerScience/AlgorithmsInComputerScience/ArbitraryPublic.lean/declarations/uint32-arbitrary.md) | 104 | `declaration-track:50414ba78ae82be492ded0e0327b5b574e4340b477a7d8862f5508897baf08d8` |
| 12 | `instance` | [UInt64.Arbitrary](../../../../../ComputerScience/AlgorithmsInComputerScience/ArbitraryPublic.lean/declarations/uint64-arbitrary.md) | 109 | `declaration-track:3b6391b0335f2873f9f5777a1302acbfe486aa3910f48c0ad26d462e485ac7ba` |
| 13 | `instance` | [USize.Arbitrary](../../../../../ComputerScience/AlgorithmsInComputerScience/ArbitraryPublic.lean/declarations/usize-arbitrary.md) | 114 | `declaration-track:1c436ca0b90cd810e2cb58883c47b780aa618fb8ff12c07ea74dd1b654edfca3` |
| 14 | `instance` | [Int.Arbitrary](../../../../../ComputerScience/AlgorithmsInComputerScience/ArbitraryPublic.lean/declarations/int-arbitrary.md) | 119 | `declaration-track:1a4814b5b59851d5113de1b86c8582376482143e3bcbaeb50d8aa6e54791c856` |
| 15 | `instance` | [Bool.Arbitrary](../../../../../ComputerScience/AlgorithmsInComputerScience/ArbitraryPublic.lean/declarations/bool-arbitrary.md) | 123 | `declaration-track:ed6c235e33367f65d28a34ff03458ccd3ae3ea502449ac0a18c3011d9c864341` |
| 16 | `def` | [Char.arbitraryFromList](../../../../../ComputerScience/AlgorithmsInComputerScience/ArbitraryPublic.lean/declarations/char-arbitraryfromlist.md) | 130 | `declaration-track:276e000d2dbd81736421015e76b85f9c108fcfbf4103a21a7d98ac95e83bc7a0` |
| 17 | `instance` | [Char.arbitraryDefaultInstance](../../../../../ComputerScience/AlgorithmsInComputerScience/ArbitraryPublic.lean/declarations/char-arbitrarydefaultinstance.md) | 142 | `declaration-track:958969e20f67d3bd9f9a09d3fdf6e9768bc811452b7d4ace36300c5dbbc6f2de` |
| 18 | `instance` | [Option.Arbitrary](../../../../../ComputerScience/AlgorithmsInComputerScience/ArbitraryPublic.lean/declarations/option-arbitrary.md) | 145 | `declaration-track:33ca4526b12fd048ef11bf30525ff28690858d50bd34cf9d72d2aa602913f0d1` |
| 19 | `instance` | [Prod.Arbitrary](../../../../../ComputerScience/AlgorithmsInComputerScience/ArbitraryPublic.lean/declarations/prod-arbitrary.md) | 151 | `declaration-track:1489c13ea2d5b85ca62507cb5b56958734d7fda0469e3abc9ed175b79bd2cf50` |
| 20 | `instance` | [List.Arbitrary](../../../../../ComputerScience/AlgorithmsInComputerScience/ArbitraryPublic.lean/declarations/list-arbitrary.md) | 155 | `declaration-track:f436ac879ea3bc128be599fda34f8d3ec7a1fad64bb498de86b1f3642db1de0e` |
| 21 | `instance` | [ULift.Arbitrary](../../../../../ComputerScience/AlgorithmsInComputerScience/ArbitraryPublic.lean/declarations/ulift-arbitrary.md) | 158 | `declaration-track:aa83edc53fc57867dcd7583b3e57fa46f22c7e49015317a0d0d5270090ec9f62` |
| 22 | `instance` | [String.Arbitrary](../../../../../ComputerScience/AlgorithmsInComputerScience/ArbitraryPublic.lean/declarations/string-arbitrary.md) | 161 | `declaration-track:76ae1d3ddd870375ece8282321c325f9c2eca59ad8c6f6ab15930eba46f712d1` |
| 23 | `instance` | [Array.Arbitrary](../../../../../ComputerScience/AlgorithmsInComputerScience/ArbitraryPublic.lean/declarations/array-arbitrary.md) | 164 | `declaration-track:9edc610685f493b0f8c88d2fdf13e604992f26e2d93657369f4f2b107bef8d58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4d7bd3bbd0dc672b9db14c6961fe9830e105a4a14a1bc061e12721ba2a6094e6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Arbitrary/Variant66cd5fceaef48745dc3a78ba93168e7860116c4ccf159be502841a74c38dcdb3.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Arbitrary/Variant66cd5fceaef48745dc3a78ba93168e7860116c4ccf159be502841a74c38dcdb3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
