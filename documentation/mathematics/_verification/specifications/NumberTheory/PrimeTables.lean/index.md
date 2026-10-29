# Verification target: Prime Tables

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3cc2a6d099ec6db457125cd9f2845e63cb7c2ead",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeTables/Variantdd65548ab171676f5e1e15cb21c10e06d42d83903495e5db6efc2ac837ed0f18.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/PrimeTables.lean/index.md) · [Full source](../../../../NumberTheory/PrimeTables.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3cc2a6d099ec6db457125cd9f2845e63cb7c2ead`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeTables/Variantdd65548ab171676f5e1e15cb21c10e06d42d83903495e5db6efc2ac837ed0f18.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/PrimeTables/Variantdd65548ab171676f5e1e15cb21c10e06d42d83903495e5db6efc2ac837ed0f18.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Count` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Defs` — import line 2; external provider; requires a separately pinned dependency.
- `PrimeCert` — import line 3; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Tactic.Simprocs` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prime_211](../../../../NumberTheory/PrimeTables.lean/declarations/prime-211.md) | 19 | `result-track:1671bb3913eb5cf2c969d3f96159a9b2056994eea426e24e19aa2ebf2f6e5364` |
| 2 | `theorem` | [prime_313](../../../../NumberTheory/PrimeTables.lean/declarations/prime-313.md) | 21 | `result-track:25aeea55ce081c7b4913667eb29d349b563c36cd03fbf70e14abc82e614455c0` |
| 3 | `theorem` | [prime_3999999999999999791](../../../../NumberTheory/PrimeTables.lean/declarations/prime-3999999999999999791.md) | 23 | `result-track:28c4e33866b89b876254e06f48c66e6e491836cdc7430bb9a0e3deb283a6d5f5` |
| 4 | `theorem` | [prime_3999999999999999691](../../../../NumberTheory/PrimeTables.lean/declarations/prime-3999999999999999691.md) | 29 | `result-track:7d328474e4aaa52e32c618c123569badd8a85cbe4456ffdb5ffff6d125a09171` |
| 5 | `theorem` | [count_prime_3_le_1](../../../../NumberTheory/PrimeTables.lean/declarations/count-prime-3-le-1.md) | 42 | `result-track:c8453f2071236349f6054d407b31f59e2c83c722503ba694ae07a7e531387a2d` |
| 6 | `theorem` | [count_prime_5_le_2](../../../../NumberTheory/PrimeTables.lean/declarations/count-prime-5-le-2.md) | 43 | `result-track:3d78ba9dade927755ac8d45abade413d8c1375742147e348350e7e0d404d90a0` |
| 7 | `theorem` | [count_prime_7_le_3](../../../../NumberTheory/PrimeTables.lean/declarations/count-prime-7-le-3.md) | 44 | `result-track:d63c050da97a7c80cdea7f4328c28528386126f06b6da6547005c17c8ff40d5c` |
| 8 | `theorem` | [count_prime_11_le_4](../../../../NumberTheory/PrimeTables.lean/declarations/count-prime-11-le-4.md) | 45 | `result-track:71d23d50f8b0c98e5e55a6fee43251490c4fcca802da4069a4f569c31a90e3df` |
| 9 | `theorem` | [count_prime_13_le_5](../../../../NumberTheory/PrimeTables.lean/declarations/count-prime-13-le-5.md) | 46 | `result-track:fedab95fba8e03107cea6f32d2f833f741854ee40c9512164df063b623f40aae` |
| 10 | `theorem` | [count_prime_17_le_6](../../../../NumberTheory/PrimeTables.lean/declarations/count-prime-17-le-6.md) | 47 | `result-track:1da0352a927452dd4e886e2a7ad1460e81b4558986da23622d1cce717f711cbc` |
| 11 | `theorem` | [count_prime_19_le_7](../../../../NumberTheory/PrimeTables.lean/declarations/count-prime-19-le-7.md) | 48 | `result-track:9ec0487bfe87a54885f9082b002e2f55008a0dcf72ba213a838aab17568482fd` |
| 12 | `theorem` | [count_prime_23_le_8](../../../../NumberTheory/PrimeTables.lean/declarations/count-prime-23-le-8.md) | 49 | `result-track:e81265bcdaac8b4159e5483776e97db5295851424dbff930de54b10e08bf3a0f` |
| 13 | `theorem` | [count_prime_29_le_9](../../../../NumberTheory/PrimeTables.lean/declarations/count-prime-29-le-9.md) | 50 | `result-track:422837603c04aa6542e672e8191feec94897345a1b863265c6046c4e8e6c35c5` |
| 14 | `theorem` | [count_prime_31_le_10](../../../../NumberTheory/PrimeTables.lean/declarations/count-prime-31-le-10.md) | 51 | `result-track:c53a2bdd5e027dfd728cc0c61451536b6daeb0fd54e02898399b33ab563c6188` |
| 15 | `theorem` | [count_prime_37_le_11](../../../../NumberTheory/PrimeTables.lean/declarations/count-prime-37-le-11.md) | 52 | `result-track:23254d3f4885c90f1689897015c9b6be6cfc5b891b6960bd67d76ee6f0fa54bb` |
| 16 | `theorem` | [count_prime_41_le_12](../../../../NumberTheory/PrimeTables.lean/declarations/count-prime-41-le-12.md) | 53 | `result-track:4a71c420fecf0b0b9c1b2ddd155b62b4acf7400f20df3a124c49e5169e5ea722` |
| 17 | `theorem` | [count_prime_43_le_13](../../../../NumberTheory/PrimeTables.lean/declarations/count-prime-43-le-13.md) | 54 | `result-track:cec757c1af2b3978b5f49b7bc921dc53da8071e9e17135d0641ee6e38cde2939` |
| 18 | `theorem` | [count_prime_47_le_14](../../../../NumberTheory/PrimeTables.lean/declarations/count-prime-47-le-14.md) | 55 | `result-track:e3b31059552b6f056fe7ced0b1405efe02a229968d9af9d7d6b8e0672d23fb68` |
| 19 | `theorem` | [count_prime_53_le_15](../../../../NumberTheory/PrimeTables.lean/declarations/count-prime-53-le-15.md) | 56 | `result-track:64b5855c1b4ecb0fa8917984ef72debb2d6416739f572e5b4238c938bebff2dc` |
| 20 | `theorem` | [count_prime_59_le_16](../../../../NumberTheory/PrimeTables.lean/declarations/count-prime-59-le-16.md) | 57 | `result-track:878d9243e73848ebde8194b80c08936ce796fe56e1f2ef13383ebb58d38bab1c` |
| 21 | `theorem` | [count_prime_61_le_17](../../../../NumberTheory/PrimeTables.lean/declarations/count-prime-61-le-17.md) | 58 | `result-track:7e4ebba8978100dc62b86749801b98013117ecf3ce6c7678d96f78ec2425a769` |
| 22 | `theorem` | [count_prime_67_le_18](../../../../NumberTheory/PrimeTables.lean/declarations/count-prime-67-le-18.md) | 59 | `result-track:88978d985031142334e17ea752cc5f004529a901c12e7ec474f4bce19febcab8` |
| 23 | `theorem` | [count_prime_71_le_19](../../../../NumberTheory/PrimeTables.lean/declarations/count-prime-71-le-19.md) | 60 | `result-track:757a2355a6bc84431d5603a62114954f66a101a1393edd8324b3ce2f1294b762` |
| 24 | `theorem` | [count_prime_73_le_20](../../../../NumberTheory/PrimeTables.lean/declarations/count-prime-73-le-20.md) | 61 | `result-track:311ce50e949f5ac28c5ba0674a55af04015314c062f60d0dfe4ecb5e21ea2822` |
| 25 | `theorem` | [count_prime_79_le_21](../../../../NumberTheory/PrimeTables.lean/declarations/count-prime-79-le-21.md) | 62 | `result-track:3d17b7672bcd1149ce56cdd5667814da99107acb97d3e7e695a3d03634aad1e1` |
| 26 | `theorem` | [count_prime_83_le_22](../../../../NumberTheory/PrimeTables.lean/declarations/count-prime-83-le-22.md) | 63 | `result-track:721623cb22421fd1794102c524149dfbf74ed7b9d80b9955683e34ed05f7ca7c` |
| 27 | `theorem` | [count_prime_89_le_23](../../../../NumberTheory/PrimeTables.lean/declarations/count-prime-89-le-23.md) | 64 | `result-track:e262bca2574465d9141dcf58f633a222fc17ed17b46269c055f0bbbe8dd893d0` |
| 28 | `theorem` | [count_prime_97_le_24](../../../../NumberTheory/PrimeTables.lean/declarations/count-prime-97-le-24.md) | 65 | `result-track:bdeb4550f9e928df524ca397eab5f636cda191879013d7ba4533bf594e2c170b` |
| 29 | `theorem` | [count_prime_101_le_25](../../../../NumberTheory/PrimeTables.lean/declarations/count-prime-101-le-25.md) | 66 | `result-track:387c824cd131d2f75af0449f8fe726878423e353e396fab59f375f5c1290fe5f` |
| 30 | `theorem` | [count_prime_103_le_26](../../../../NumberTheory/PrimeTables.lean/declarations/count-prime-103-le-26.md) | 67 | `result-track:e3664163d81e92a456aaa77720cd7345022b7e7d1040fd9ba5afbcd5499ed94f` |
| 31 | `theorem` | [count_prime_107_le_27](../../../../NumberTheory/PrimeTables.lean/declarations/count-prime-107-le-27.md) | 68 | `result-track:d0bdfbc510766274851124788829eeffeae9b76114d49fda43e299c546d892cc` |
| 32 | `theorem` | [count_prime_109_le_28](../../../../NumberTheory/PrimeTables.lean/declarations/count-prime-109-le-28.md) | 69 | `result-track:a7a75602a4cbea2fb54120d9f88f5e6d0a9d20cbd5f9afaebde7c61244ad559b` |
| 33 | `theorem` | [count_prime_113_le_29](../../../../NumberTheory/PrimeTables.lean/declarations/count-prime-113-le-29.md) | 70 | `result-track:3fdce0bc2a73f0e5ddb458e3569c4d75836871cf8a44bb1c8366c46b42eccfc8` |
| 34 | `theorem` | [count_prime_127_le_30](../../../../NumberTheory/PrimeTables.lean/declarations/count-prime-127-le-30.md) | 71 | `result-track:8c932e38ae61a1431483302e22ddfd5fbdf7d634b57336a4b23b4bdbfb77d52a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bb2f977b589d7149201b21883bb7b41ee280b27565351905e8bbddd6cadb9630 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeTables/Variantdd65548ab171676f5e1e15cb21c10e06d42d83903495e5db6efc2ac837ed0f18.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/PrimeTables/Variantdd65548ab171676f5e1e15cb21c10e06d42d83903495e5db6efc2ac837ed0f18.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
