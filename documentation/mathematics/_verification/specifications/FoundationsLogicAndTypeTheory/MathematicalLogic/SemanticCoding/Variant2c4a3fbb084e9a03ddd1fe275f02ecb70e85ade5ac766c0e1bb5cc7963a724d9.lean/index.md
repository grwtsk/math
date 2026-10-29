# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SemanticCoding.Variant2c4a3fbb084e9a03ddd1fe275f02ecb70e85ade5ac766c0e1bb5cc7963a724d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb1689bdd32d574cac441ed46320b1017d9445f0",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SemanticCoding/Variant2c4a3fbb084e9a03ddd1fe275f02ecb70e85ade5ac766c0e1bb5cc7963a724d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/SemanticCoding/Variant2c4a3fbb084e9a03ddd1fe275f02ecb70e85ade5ac766c0e1bb5cc7963a724d9.lean/index.md) · [Full source](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/SemanticCoding/Variant2c4a3fbb084e9a03ddd1fe275f02ecb70e85ade5ac766c0e1bb5cc7963a724d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb1689bdd32d574cac441ed46320b1017d9445f0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SemanticCoding/Variant2c4a3fbb084e9a03ddd1fe275f02ecb70e85ade5ac766c0e1bb5cc7963a724d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/SemanticCoding/Variant2c4a3fbb084e9a03ddd1fe275f02ecb70e85ade5ac766c0e1bb5cc7963a724d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Equiv.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SemanticTyping](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/SemanticCoding/Variant2c4a3fbb084e9a03ddd1fe275f02ecb70e85ade5ac766c0e1bb5cc7963a724d9.lean/declarations/semantictyping--129c2aeccb0850a63ea89a6e.md) | 16 | `declaration-track:129c2aeccb0850a63ea89a6e737536038635b9dfc3fae073a1b4bc39187b75c7` |
| 2 | `structure` | [CodingEquivalenceInvariant](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/SemanticCoding/Variant2c4a3fbb084e9a03ddd1fe275f02ecb70e85ade5ac766c0e1bb5cc7963a724d9.lean/declarations/codingequivalenceinvariant--9f5ec30ae5919883bf0e35ca.md) | 30 | `declaration-track:9f5ec30ae5919883bf0e35ca976ed2be2105a4acba1f9dfd00f39e1187866a62` |
| 3 | `theorem` | [encode_injective](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/SemanticCoding/Variant2c4a3fbb084e9a03ddd1fe275f02ecb70e85ade5ac766c0e1bb5cc7963a724d9.lean/declarations/encode-injective--cedcca61dddeebfd67b18a1b.md) | 44 | `result-track:cedcca61dddeebfd67b18a1b3d5c3a063a640daf8ce551347b88f9f8d8d14914` |
| 4 | `theorem` | [encode_surjective](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/SemanticCoding/Variant2c4a3fbb084e9a03ddd1fe275f02ecb70e85ade5ac766c0e1bb5cc7963a724d9.lean/declarations/encode-surjective--e6519471750fd7b7623a2cdb.md) | 55 | `result-track:e6519471750fd7b7623a2cdbcbc1eab173ed44cc006e2d1954d0af96e8d56194` |
| 5 | `structure` | [SemanticAutomorphism](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/SemanticCoding/Variant2c4a3fbb084e9a03ddd1fe275f02ecb70e85ade5ac766c0e1bb5cc7963a724d9.lean/declarations/semanticautomorphism--bbe112cefba2e84c28aed103.md) | 72 | `declaration-track:bbe112cefba2e84c28aed1031781e90b986c797cc0627b4314f07301e70a46fc` |
| 6 | `theorem` | [SemanticAutomorphism.encode_equivariant](../../../../../../FoundationsLogicAndTypeTheory/MathematicalLogic/SemanticCoding/Variant2c4a3fbb084e9a03ddd1fe275f02ecb70e85ade5ac766c0e1bb5cc7963a724d9.lean/declarations/semanticautomorphism-encode-equivariant--005256e744215ff0384127d2.md) | 85 | `result-track:005256e744215ff0384127d204ef6e057ad82f32b2f19c7a62dbf9c9f760cb4e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c0628781bce5a09527d2b519f87e3826b677df1134628d96306e7d57f656243b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SemanticCoding/Variant2c4a3fbb084e9a03ddd1fe275f02ecb70e85ade5ac766c0e1bb5cc7963a724d9.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/SemanticCoding/Variant2c4a3fbb084e9a03ddd1fe275f02ecb70e85ade5ac766c0e1bb5cc7963a724d9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
