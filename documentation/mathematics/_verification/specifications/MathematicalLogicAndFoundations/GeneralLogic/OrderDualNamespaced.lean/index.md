# Verification target: Order Dual Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77f136c34bd224eb3f930c4ee3df28ab0a85927b",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/OrderDual/Variant3be17e82f883f8695cc5accf5ff4358b42124f3ed136422c5cc891f58c82716d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OrderDualNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OrderDualNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77f136c34bd224eb3f930c4ee3df28ab0a85927b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/OrderDual/Variant3be17e82f883f8695cc5accf5ff4358b42124f3ed136422c5cc891f58c82716d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/OrderDual/Variant3be17e82f883f8695cc5accf5ff4358b42124f3ed136422c5cc891f58c82716d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FCRS.TheoremTransfer.Core` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [version](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OrderDualNamespaced.lean/declarations/version.md) | 23 | `declaration-track:a67cf00686a5cf2c0ca663389d60e4329afdb77a78a37f59c013e677e06a2715` |
| 2 | `structure` | [OrderProposition](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OrderDualNamespaced.lean/declarations/orderproposition.md) | 28 | `declaration-track:8c5711edf6e17a957e7b10cf61bd097fad6ba4f3077d69f5b47e163a63688e2b` |
| 3 | `def` | [forwardOrderTheory](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OrderDualNamespaced.lean/declarations/forwardordertheory.md) | 34 | `declaration-track:9459086d7592ae9bd596beb2af9fc6332676f5048280547db1bf5614dbf1519b` |
| 4 | `def` | [reverseOrderTheory](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OrderDualNamespaced.lean/declarations/reverseordertheory.md) | 47 | `declaration-track:4a5a80984afcc6e6d594610ebf95465d791a6c9862692e67d9acf82ffe07f087` |
| 5 | `def` | [leanFoundation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OrderDualNamespaced.lean/declarations/leanfoundation.md) | 60 | `declaration-track:b5f514a4bd6875614ebb4dc9a478d9e4459d6c025929abb61f6b9f724eb19b7c` |
| 6 | `def` | [orderQuantifierProfile](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OrderDualNamespaced.lean/declarations/orderquantifierprofile.md) | 64 | `declaration-track:8674ecf8cdf1c900574401725d61d23a92d136450a98e68d3a16edbae585affd` |
| 7 | `def` | [forwardVersion](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OrderDualNamespaced.lean/declarations/forwardversion.md) | 76 | `declaration-track:3638419bd63a2ed91102d914210c0115fbdd1882e6badd7146df2ebb61fdcb45` |
| 8 | `def` | [reverseVersion](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OrderDualNamespaced.lean/declarations/reverseversion.md) | 90 | `declaration-track:cf38f257f9355e1466e3aa9a56e92654bc1928ca9c4f23c5979367bc1e87a609` |
| 9 | `def` | [forwardAssumptions](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OrderDualNamespaced.lean/declarations/forwardassumptions.md) | 104 | `declaration-track:02ca85c1b190baadcee0c7c452026bbe1c7d9b049b1391c5c3a4cf5f722b14bb` |
| 10 | `def` | [reverseAssumptions](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OrderDualNamespaced.lean/declarations/reverseassumptions.md) | 108 | `declaration-track:5c34d22355cd9cbcece0035f57f7807ee0d7209ade06d2880634095dd6d1929a` |
| 11 | `def` | [forwardScope](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OrderDualNamespaced.lean/declarations/forwardscope.md) | 112 | `declaration-track:15c1cffa170c359b52926d19932de1a15b6faf939924e7cd68726ab9eb5ba54c` |
| 12 | `def` | [reverseScope](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OrderDualNamespaced.lean/declarations/reversescope.md) | 115 | `declaration-track:2dae258fbdb6aa3c3b7892b01c8ac3159b042608fef4ae8cdc2329e38b3d5189` |
| 13 | `def` | [translation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OrderDualNamespaced.lean/declarations/translation.md) | 119 | `declaration-track:0bb906c6ac3e3261ddbf6fb891dd1a66017ecf26826a5c2d56d816c7615da3dc` |
| 14 | `theorem` | [preserves](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OrderDualNamespaced.lean/declarations/preserves.md) | 177 | `result-track:cea4a0ef264afe4bd7b9ec6dc3404f6c1538aef3d9e1dd5c2214aea5379a09a8` |
| 15 | `theorem` | [reflects](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OrderDualNamespaced.lean/declarations/reflects.md) | 183 | `result-track:de3c3823a1fe0943d058aa3e16e8c2be6488237842ea0923032c8b9222681778` |
| 16 | `def` | [preservationTheorem](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OrderDualNamespaced.lean/declarations/preservationtheorem.md) | 188 | `declaration-track:60e5ac6309d35b2687a19f12af9a21c8472b6af220e3e958dcc412420084210c` |
| 17 | `def` | [reflectionTheorem](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OrderDualNamespaced.lean/declarations/reflectiontheorem.md) | 192 | `declaration-track:7ef893688fe9f649f2839f607ae7c0b96ac30e08328e51a1fd424ad15fd577e2` |
| 18 | `theorem` | [equivalent](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OrderDualNamespaced.lean/declarations/equivalent.md) | 196 | `result-track:ceadef4a1239c51313523275314ba7fdf152cbf4ac212258376c71c0ef3b3ea6` |
| 19 | `def` | [equivalenceWitness](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OrderDualNamespaced.lean/declarations/equivalencewitness.md) | 200 | `declaration-track:e31af54b9647d34e737cf7dd5e93ed6531a7f814b0d0a0a808439ef369ff3934` |
| 20 | `def` | [certified](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OrderDualNamespaced.lean/declarations/certified.md) | 207 | `declaration-track:cf0d52ace0adc4828a920a0581cb9771910b0f138f425c404cbe630078278cc6` |
| 21 | `def` | [transported](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OrderDualNamespaced.lean/declarations/transported.md) | 217 | `declaration-track:f1bf1ff713ec8d01f74f8eb0796e4cb94925df84b80e3997fa26843970ef839c` |
| 22 | `theorem` | [roundTripEvidence](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OrderDualNamespaced.lean/declarations/roundtripevidence.md) | 225 | `result-track:da0e565d7a113308b83a5f7b7910be8995a1360824da7a39cdc02e7007003150` |
| 23 | `def` | [equalityRegime](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OrderDualNamespaced.lean/declarations/equalityregime.md) | 233 | `declaration-track:716a634b7fc4fb7d6af9334280e2296819b1e439b9cc87c23e0500189764c94b` |
| 24 | `def` | [equalityInvariant](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OrderDualNamespaced.lean/declarations/equalityinvariant.md) | 242 | `declaration-track:f7f58fc70e64f8489657a4fb0bd956a7f114c715249e683191cd33bc346befe7` |
| 25 | `theorem` | [transferPropertyUnderEquality](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OrderDualNamespaced.lean/declarations/transferpropertyunderequality.md) | 251 | `result-track:643546a7fd2c35913de70859429238684f2d3c3e4a9aeaa5c4718f63c7828b2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cd9c7b5830736ab0cd80d1567be512622afc550ef38aa2a37b695b088b48c966 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/OrderDual/Variant3be17e82f883f8695cc5accf5ff4358b42124f3ed136422c5cc891f58c82716d.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ModelTheory/OrderDual/Variant3be17e82f883f8695cc5accf5ff4358b42124f3ed136422c5cc891f58c82716d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
