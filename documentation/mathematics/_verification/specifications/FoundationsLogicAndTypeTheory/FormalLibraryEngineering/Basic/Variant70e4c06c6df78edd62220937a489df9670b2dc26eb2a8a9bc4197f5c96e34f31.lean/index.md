# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant70e4c06c6df78edd62220937a489df9670b2dc26eb2a8a9bc4197f5c96e34f31

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c83f476b5c531815e73e728eeee2fce88e6c6e6c",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant70e4c06c6df78edd62220937a489df9670b2dc26eb2a8a9bc4197f5c96e34f31.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant70e4c06c6df78edd62220937a489df9670b2dc26eb2a8a9bc4197f5c96e34f31.lean/index.md) · [Full source](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant70e4c06c6df78edd62220937a489df9670b2dc26eb2a8a9bc4197f5c96e34f31.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c83f476b5c531815e73e728eeee2fce88e6c6e6c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant70e4c06c6df78edd62220937a489df9670b2dc26eb2a8a9bc4197f5c96e34f31.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant70e4c06c6df78edd62220937a489df9670b2dc26eb2a8a9bc4197f5c96e34f31.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Util.TermUnsafe` — import line 12; external provider; requires a separately pinned dependency.
- `Std.Lean.NameMapAttribute` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isAutoDecl](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant70e4c06c6df78edd62220937a489df9670b2dc26eb2a8a9bc4197f5c96e34f31.lean/declarations/isautodecl--ea1b37e977d7419a6cd377f1.md) | 41 | `declaration-track:ea1b37e977d7419a6cd377f1a9b56db79c849aea80bc830e1c2da707efec9852` |
| 2 | `structure` | [Linter](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant70e4c06c6df78edd62220937a489df9670b2dc26eb2a8a9bc4197f5c96e34f31.lean/declarations/linter--c09764029b2715acfe92329c.md) | 58 | `declaration-track:c09764029b2715acfe92329c45ce445bb1729ad4a413d4e1fac6e2c9310cfcd3` |
| 3 | `structure` | [NamedLinter](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant70e4c06c6df78edd62220937a489df9670b2dc26eb2a8a9bc4197f5c96e34f31.lean/declarations/namedlinter--f37697ff2eb8a10be393f163.md) | 70 | `declaration-track:f37697ff2eb8a10be393f163cd19c439580fd5a9e8d8eaf18fdab9e7f441dd88` |
| 4 | `def` | [getLinter](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant70e4c06c6df78edd62220937a489df9670b2dc26eb2a8a9bc4197f5c96e34f31.lean/declarations/getlinter--f94b52f6df8ce266639ef761.md) | 77 | `declaration-track:f94b52f6df8ce266639ef761124c7c7f29300061c92ee9620e01a8bc9110d3ad` |
| 5 | `initialize` | [(anonymous)](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant70e4c06c6df78edd62220937a489df9670b2dc26eb2a8a9bc4197f5c96e34f31.lean/declarations/initialize--35a74485e21bd85ff0a009b3.md) | 81 | `declaration-track:35a74485e21bd85ff0a009b317862233d1d62e781d95ba5d1327a8dd21bbb138` |
| 6 | `syntax` | [(anonymous)](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant70e4c06c6df78edd62220937a489df9670b2dc26eb2a8a9bc4197f5c96e34f31.lean/declarations/syntax--2a6dadc298c3c3f03b590bec.md) | 99 | `declaration-track:2a6dadc298c3c3f03b590bec5ad681bebc906b260f67d1362953d02b6b119adf` |
| 7 | `initialize` | [(anonymous)](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant70e4c06c6df78edd62220937a489df9670b2dc26eb2a8a9bc4197f5c96e34f31.lean/declarations/initialize--5030013bfe5f4966c8b1320e.md) | 101 | `declaration-track:5030013bfe5f4966c8b1320e8eac6a3e5ed908519af40c876a37c9b496721492` |
| 8 | `syntax` | [(anonymous)](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant70e4c06c6df78edd62220937a489df9670b2dc26eb2a8a9bc4197f5c96e34f31.lean/declarations/syntax--d96c333da83de1e612cb7af1.md) | 119 | `declaration-track:d96c333da83de1e612cb7af1ac78ac593d35bba1adbc420e3f1ca7d610d61a5c` |
| 9 | `initialize` | [(anonymous)](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant70e4c06c6df78edd62220937a489df9670b2dc26eb2a8a9bc4197f5c96e34f31.lean/declarations/initialize--9595fad8f17f8651d86a22cc.md) | 122 | `declaration-track:9595fad8f17f8651d86a22ccd2154216e1855f4dc16f21236424116173f8d24b` |
| 10 | `def` | [shouldBeLinted](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant70e4c06c6df78edd62220937a489df9670b2dc26eb2a8a9bc4197f5c96e34f31.lean/declarations/shouldbelinted--3e4796d676b0dec4872cfc5e.md) | 138 | `declaration-track:3e4796d676b0dec4872cfc5e6aef2a2a3559c904af781e16857c08b490126960` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc0f6805fd705f78b909ddaa3b122d1f8b60e913a3bc12d7da140fbd08bbd984 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant70e4c06c6df78edd62220937a489df9670b2dc26eb2a8a9bc4197f5c96e34f31.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant70e4c06c6df78edd62220937a489df9670b2dc26eb2a8a9bc4197f5c96e34f31.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
