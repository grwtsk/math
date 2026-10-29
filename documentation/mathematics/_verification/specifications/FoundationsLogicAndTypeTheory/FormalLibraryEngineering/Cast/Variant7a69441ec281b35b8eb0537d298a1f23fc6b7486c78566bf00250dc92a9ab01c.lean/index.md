# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cast.Variant7a69441ec281b35b8eb0537d298a1f23fc6b7486c78566bf00250dc92a9ab01c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ddd240031b51573ae6e0d62188dff6e689eab12b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cast/Variant7a69441ec281b35b8eb0537d298a1f23fc6b7486c78566bf00250dc92a9ab01c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cast/Variant7a69441ec281b35b8eb0537d298a1f23fc6b7486c78566bf00250dc92a9ab01c.lean/index.md) · [Full source](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cast/Variant7a69441ec281b35b8eb0537d298a1f23fc6b7486c78566bf00250dc92a9ab01c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ddd240031b51573ae6e0d62188dff6e689eab12b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cast/Variant7a69441ec281b35b8eb0537d298a1f23fc6b7486c78566bf00250dc92a9ab01c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cast/Variant7a69441ec281b35b8eb0537d298a1f23fc6b7486c78566bf00250dc92a9ab01c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Tactic.CoeExt` — import line 11; external provider; requires a separately pinned dependency.
- `Std.Util.LibraryNote` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NatCast](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cast/Variant7a69441ec281b35b8eb0537d298a1f23fc6b7486c78566bf00250dc92a9ab01c.lean/declarations/natcast--2257e53557473a77b80c375d.md) | 18 | `declaration-track:2257e53557473a77b80c375d781b95affec71fb13faa482dfdcf20a383723b6a` |
| 2 | `instance` | [(anonymous)](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cast/Variant7a69441ec281b35b8eb0537d298a1f23fc6b7486c78566bf00250dc92a9ab01c.lean/declarations/instance--67c4858e082d818f8166fe0d.md) | 22 | `declaration-track:67c4858e082d818f8166fe0d6f224944cda0a7fe9f9927c0045a9fde92484786` |
| 3 | `instance` | [(anonymous)](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cast/Variant7a69441ec281b35b8eb0537d298a1f23fc6b7486c78566bf00250dc92a9ab01c.lean/declarations/instance--2cf20b4fed4ea169944bd280.md) | 23 | `declaration-track:2cf20b4fed4ea169944bd280b3507962b83b482f80a709de6e15dfee1baca469` |
| 4 | `def` | [Nat.cast](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cast/Variant7a69441ec281b35b8eb0537d298a1f23fc6b7486c78566bf00250dc92a9ab01c.lean/declarations/nat-cast--6c9aeb07f2ed84db995a14bc.md) | 27 | `declaration-track:6c9aeb07f2ed84db995a14bc73e371c31335ae9be5f1c58853f25a90e5b10858` |
| 5 | `instance` | [(anonymous)](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cast/Variant7a69441ec281b35b8eb0537d298a1f23fc6b7486c78566bf00250dc92a9ab01c.lean/declarations/instance--505d062abc9358d07f04f8f9.md) | 31 | `declaration-track:505d062abc9358d07f04f8f9477b1f999104cab559c0c4d6594f7db1559976f7` |
| 6 | `instance` | [(anonymous)](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cast/Variant7a69441ec281b35b8eb0537d298a1f23fc6b7486c78566bf00250dc92a9ab01c.lean/declarations/instance--60223909ea546df7f7fa4fcc.md) | 34 | `declaration-track:60223909ea546df7f7fa4fcc9c86e1c4a2fd950b1ec01fe72c34b8f189b8f364` |
| 7 | `instance` | [(anonymous)](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cast/Variant7a69441ec281b35b8eb0537d298a1f23fc6b7486c78566bf00250dc92a9ab01c.lean/declarations/instance--16737f8aa54490e84274abdb.md) | 37 | `declaration-track:16737f8aa54490e84274abdba5ff284bfa888b66fd8cb2718c79e5f39ef27ec5` |
| 8 | `class` | [IntCast](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cast/Variant7a69441ec281b35b8eb0537d298a1f23fc6b7486c78566bf00250dc92a9ab01c.lean/declarations/intcast--9497ff6f8941b86e1da97aec.md) | 40 | `declaration-track:9497ff6f8941b86e1da97aec6c3be54c3a0a5efefb50782e7acbe954314339b8` |
| 9 | `instance` | [(anonymous)](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cast/Variant7a69441ec281b35b8eb0537d298a1f23fc6b7486c78566bf00250dc92a9ab01c.lean/declarations/instance--1d180ad1bff3a86cdf857fb5.md) | 44 | `declaration-track:1d180ad1bff3a86cdf857fb518027344c9023f0bea3fa83d0016f4980bfdc738` |
| 10 | `def` | [Int.cast](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cast/Variant7a69441ec281b35b8eb0537d298a1f23fc6b7486c78566bf00250dc92a9ab01c.lean/declarations/int-cast--043d3d5ee4e24ef09c18d4cd.md) | 48 | `declaration-track:043d3d5ee4e24ef09c18d4cdf0659999cbcf81033322ecd88c459a8ab53a4c57` |
| 11 | `instance` | [(anonymous)](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cast/Variant7a69441ec281b35b8eb0537d298a1f23fc6b7486c78566bf00250dc92a9ab01c.lean/declarations/instance--ddaf9befe99feb5390563797.md) | 52 | `declaration-track:ddaf9befe99feb539056379764b537abddb34c99d54c13e119e529b94a05b4b1` |
| 12 | `instance` | [(anonymous)](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cast/Variant7a69441ec281b35b8eb0537d298a1f23fc6b7486c78566bf00250dc92a9ab01c.lean/declarations/instance--b79b19db0219d81b4f8ffcdc.md) | 55 | `declaration-track:b79b19db0219d81b4f8ffcdc5fe2b968127a92fdbc325e4fefc22e184a345d12` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6ab449435e3342a29fb75bfaf9c3a5a5ae8d19a0b6cca5f18f0614f3b2f92438 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cast/Variant7a69441ec281b35b8eb0537d298a1f23fc6b7486c78566bf00250dc92a9ab01c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cast/Variant7a69441ec281b35b8eb0537d298a1f23fc6b7486c78566bf00250dc92a9ab01c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
