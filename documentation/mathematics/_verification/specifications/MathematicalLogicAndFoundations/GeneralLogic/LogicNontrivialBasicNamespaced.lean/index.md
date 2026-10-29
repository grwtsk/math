# Verification target: Logic Nontrivial Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "237517c4fd387fb7537f7fef81352c691ce60913",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante41afb1fa2a2d1690abbc45c2559356b4e3c1f960fa89ac8d78184bcb042535c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNontrivialBasicNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNontrivialBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `237517c4fd387fb7537f7fef81352c691ce60913`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante41afb1fa2a2d1690abbc45c2559356b4e3c1f960fa89ac8d78184bcb042535c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante41afb1fa2a2d1690abbc45c2559356b4e3c1f960fa89ac8d78184bcb042535c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Prod.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Nontrivial.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Unique` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Defs.LinearOrder` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Attr.Register` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nontrivial_of_lt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNontrivialBasicNamespaced.lean/declarations/nontrivial-of-lt.md) | 30 | `result-track:e789dbbfad573683e3e94e2063402a55921928cbc19ac9f7775dac7e162b814e` |
| 2 | `theorem` | [exists_pair_lt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNontrivialBasicNamespaced.lean/declarations/exists-pair-lt.md) | 33 | `result-track:f5cdb3dac6285e94c6853a8e3888f5901847d761b92718a14e60febd36eabdb0` |
| 3 | `theorem` | [nontrivial_iff_lt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNontrivialBasicNamespaced.lean/declarations/nontrivial-iff-lt.md) | 37 | `result-track:848a523bd433929b803339aa0474732f30237b3f6aa5a20889df668a64b5140b` |
| 4 | `theorem` | [Subtype.nontrivial_iff_exists_ne](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNontrivialBasicNamespaced.lean/declarations/subtype-nontrivial-iff-exists-ne.md) | 40 | `result-track:949668a568aab4cbdb0788138a57c2e141f54a1a7c06a79596ab412196945b9a` |
| 5 | `def` | [nontrivialPSumUnique](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNontrivialBasicNamespaced.lean/declarations/nontrivialpsumunique.md) | 46 | `declaration-track:c14761b28771db242343e1712136f014fde37d8ee2bf75db81501b752593e609` |
| 6 | `instance` | [Option.nontrivial](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNontrivialBasicNamespaced.lean/declarations/option-nontrivial.md) | 56 | `declaration-track:0294ce40449d19d2824ac85409a00558cff0bc0a4fbf784f8184c736f4e56fa3` |
| 7 | `theorem` | [Function.Injective.nontrivial](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNontrivialBasicNamespaced.lean/declarations/function-injective-nontrivial.md) | 61 | `result-track:af3e964ae0f6aba45c64b7f7541158e10a65fa35c73fecbf903908300643424d` |
| 8 | `theorem` | [Function.Injective.exists_ne](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNontrivialBasicNamespaced.lean/declarations/function-injective-exists-ne.md) | 68 | `result-track:458e683c42404430ce70bcb5379172e22ba2d82f40666c62f36c2f5fd4dc796d` |
| 9 | `instance` | [nontrivial_prod_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNontrivialBasicNamespaced.lean/declarations/nontrivial-prod-right.md) | 75 | `declaration-track:c68098c3822b69a57e65881ff91cee539b191262980ddda221f4c185f45b512c` |
| 10 | `instance` | [nontrivial_prod_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNontrivialBasicNamespaced.lean/declarations/nontrivial-prod-left.md) | 78 | `declaration-track:21796ef959d1d292f6e68ff4fe7ab1646c38b5a2743a29463f0cc749ada2a201` |
| 11 | `theorem` | [nontrivial_at](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNontrivialBasicNamespaced.lean/declarations/nontrivial-at.md) | 87 | `result-track:531f5b8146f8ef7e41594bdbbb0e1250ef915ca2d9a18ced7bee20a6d7b03d41` |
| 12 | `instance` | [nontrivial](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNontrivialBasicNamespaced.lean/declarations/nontrivial.md) | 96 | `declaration-track:1ce685269c1b1192a4cc47f7d08ac08577f305863429727ce161be70f515fe4d` |
| 13 | `instance` | [Function.nontrivial](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNontrivialBasicNamespaced.lean/declarations/function-nontrivial.md) | 102 | `declaration-track:4810ad8a2317d4444bb0cffee235250c3a47083398de9e0782b01c9abbc9b331` |
| 14 | `theorem` | [Subsingleton.le](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicNontrivialBasicNamespaced.lean/declarations/subsingleton-le.md) | 106 | `result-track:3545361287930fcbbbca1ba82304e4f6471be32f4a87f3ad367f3b44c4bdb8ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6536dd13a875239b37324046963d418e8741c5713af887c6b1d53eed2ed65a01 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante41afb1fa2a2d1690abbc45c2559356b4e3c1f960fa89ac8d78184bcb042535c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante41afb1fa2a2d1690abbc45c2559356b4e3c1f960fa89ac8d78184bcb042535c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
