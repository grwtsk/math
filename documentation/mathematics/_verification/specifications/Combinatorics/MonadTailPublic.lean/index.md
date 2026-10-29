# Verification target: Monad Tail Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69a68ca8abd53cd0e9faff4d5aeb21f6d62d09d3",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonadTail/Variant49a8c8381a01198a8b2fa2c6ec9b8c82671c4fdd2b11dc88d5e6ea5b63c20db3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/MonadTailPublic.lean/index.md) · [Full source](../../../../Combinatorics/MonadTailPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69a68ca8abd53cd0e9faff4d5aeb21f6d62d09d3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonadTail/Variant49a8c8381a01198a8b2fa2c6ec9b8c82671c4fdd2b11dc88d5e6ea5b63c20db3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonadTail/Variant49a8c8381a01198a8b2fa2c6ec9b8c82671c4fdd2b11dc88d5e6ea5b63c20db3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [MonadTail](../../../../Combinatorics/MonadTailPublic.lean/declarations/monadtail.md) | 27 | `declaration-track:f29e121bd48a702db3a082e89f7d7aa7f1cd374d5cf903278ba2e960585cb7f0` |
| 2 | `theorem` | [MonadTail.monotone_bind_right](../../../../Combinatorics/MonadTailPublic.lean/declarations/monadtail-monotone-bind-right.md) | 38 | `result-track:af89c41b9bb85ace7201977191e53306c5623ad80046169f7da5c3a140ececbf` |
| 3 | `instance` | [(anonymous)](../../../../Combinatorics/MonadTailPublic.lean/declarations/instance-source-edition-7.md) | 47 | `declaration-track:56953278c1bba2af0a6a7ea58151c5f5b5c77b6716bde6ced9a3267094d4031c` |
| 4 | `instance` | [(anonymous)](../../../../Combinatorics/MonadTailPublic.lean/declarations/instance-source-edition-14.md) | 51 | `declaration-track:fc64261e0bad78316bee4c3171476946894e09cecfd6758fda015c69ca80bdf4` |
| 5 | `instance` | [(anonymous)](../../../../Combinatorics/MonadTailPublic.lean/declarations/instance-source-edition-4.md) | 62 | `declaration-track:2cae00b02afa421cdb352109374b11443e565c6cb1b96412ba6a4cc150b56434` |
| 6 | `instance` | [(anonymous)](../../../../Combinatorics/MonadTailPublic.lean/declarations/instance-source-edition-2.md) | 72 | `declaration-track:169d3ed127c60a5265577fbd76af2de32dea2dc62898b4f347c6ebae2b2f7316` |
| 7 | `instance` | [(anonymous)](../../../../Combinatorics/MonadTailPublic.lean/declarations/instance-source-edition-10.md) | 79 | `declaration-track:c05aff2d85ac2f3046d8a403f524b36ff8ef49fa920021f44aa5b4b0cbd8f1f9` |
| 8 | `instance` | [(anonymous)](../../../../Combinatorics/MonadTailPublic.lean/declarations/instance.md) | 89 | `declaration-track:06c7b4c8d6bce2ca808650a34d72b81b1fbde88a09b6200af9cc3f9a57780ac9` |
| 9 | `instance` | [(anonymous)](../../../../Combinatorics/MonadTailPublic.lean/declarations/instance-source-edition-3.md) | 93 | `declaration-track:194c73261315d40c548cd6f374454f61086dbc71fdc86d338f988ff343a9f696` |
| 10 | `def` | [ST.bot'](../../../../Combinatorics/MonadTailPublic.lean/declarations/st-bot.md) | 105 | `declaration-track:72657e18f2f89e7571c8592143dbcecb1f1532c5a1f5eab4b097778db5dcaafb` |
| 11 | `instance` | [(anonymous)](../../../../Combinatorics/MonadTailPublic.lean/declarations/instance-source-edition-8.md) | 108 | `declaration-track:6f2e86a6198a2934986039eec5b2b4532a30acef3dd0246e20a69e24350b2a92` |
| 12 | `instance` | [(anonymous)](../../../../Combinatorics/MonadTailPublic.lean/declarations/instance-source-edition-12.md) | 115 | `declaration-track:eb115d321df326db41240a034222ab427c469d5ae29d9dbc674f734e61ae0912` |
| 13 | `instance` | [(anonymous)](../../../../Combinatorics/MonadTailPublic.lean/declarations/instance-source-edition-9.md) | 123 | `declaration-track:8f1c31bd8568eeb2df3752527a6051bff2170c5b12de882adf61c5e9f0464d45` |
| 14 | `instance` | [(anonymous)](../../../../Combinatorics/MonadTailPublic.lean/declarations/instance-source-edition-11.md) | 126 | `declaration-track:d7bfaeb77c258e855db83773cfeed197be081d5106ccfd86651c6e88898ffca3` |
| 15 | `instance` | [(anonymous)](../../../../Combinatorics/MonadTailPublic.lean/declarations/instance-source-edition-5.md) | 130 | `declaration-track:317accc3374c8d4b2126c2a924358fa31f4d443b550c4b25f114b96b8f3315a7` |
| 16 | `instance` | [(anonymous)](../../../../Combinatorics/MonadTailPublic.lean/declarations/instance-source-edition-13.md) | 133 | `declaration-track:f6854551a905ed9900ab3601270cfa3186466c5f068886018d54b4e060ad7e7c` |
| 17 | `instance` | [(anonymous)](../../../../Combinatorics/MonadTailPublic.lean/declarations/instance-source-edition-6.md) | 136 | `declaration-track:3c95145aeb295044f50ca3963e897e68b3d5f91fc6b7fc25993649060516fe64` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4643af62e2b89811769f766f7fb3242481ae1cc63036b487894ccd342279d22d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonadTail/Variant49a8c8381a01198a8b2fa2c6ec9b8c82671c4fdd2b11dc88d5e6ea5b63c20db3.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonadTail/Variant49a8c8381a01198a8b2fa2c6ec9b8c82671c4fdd2b11dc88d5e6ea5b63c20db3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
