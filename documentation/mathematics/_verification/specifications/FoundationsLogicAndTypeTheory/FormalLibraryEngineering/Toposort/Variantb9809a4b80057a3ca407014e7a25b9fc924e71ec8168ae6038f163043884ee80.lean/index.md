# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Toposort.Variantb9809a4b80057a3ca407014e7a25b9fc924e71ec8168ae6038f163043884ee80

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c55dd00bd68d9647b9c50a756fac0fbffb2c5613",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toposort/Variantb9809a4b80057a3ca407014e7a25b9fc924e71ec8168ae6038f163043884ee80.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toposort/Variantb9809a4b80057a3ca407014e7a25b9fc924e71ec8168ae6038f163043884ee80.lean/index.md) · [Full source](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toposort/Variantb9809a4b80057a3ca407014e7a25b9fc924e71ec8168ae6038f163043884ee80.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c55dd00bd68d9647b9c50a756fac0fbffb2c5613`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toposort/Variantb9809a4b80057a3ca407014e7a25b9fc924e71ec8168ae6038f163043884ee80.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toposort/Variantb9809a4b80057a3ca407014e7a25b9fc924e71ec8168ae6038f163043884ee80.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Compiler.InitAttr` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TopoCtx](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toposort/Variantb9809a4b80057a3ca407014e7a25b9fc924e71ec8168ae6038f163043884ee80.lean/declarations/topoctx--4a6685298ca9c3ef2b0e240f.md) | 30 | `declaration-track:4a6685298ca9c3ef2b0e240f8fb85fe99e08f8713c4b61c03c7a41d864a30148` |
| 2 | `structure` | [TopoState](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toposort/Variantb9809a4b80057a3ca407014e7a25b9fc924e71ec8168ae6038f163043884ee80.lean/declarations/topostate--be30e5e185713340e2b61acc.md) | 33 | `declaration-track:be30e5e185713340e2b61acc008b76bd3270845a07bc74652d50ac791c4fd51f` |
| 3 | `abbrev` | [ToposortM](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toposort/Variantb9809a4b80057a3ca407014e7a25b9fc924e71ec8168ae6038f163043884ee80.lean/declarations/toposortm--5883096f46a3d066ebfc87c2.md) | 37 | `declaration-track:5883096f46a3d066ebfc87c2ed49b363d5679dbe030adf193358fac79305478a` |
| 4 | `def` | [toposort](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toposort/Variantb9809a4b80057a3ca407014e7a25b9fc924e71ec8168ae6038f163043884ee80.lean/declarations/toposort--71814ccfb9db8990ed9e090c.md) | 39 | `declaration-track:71814ccfb9db8990ed9e090c3f6368d68394d0b0f35363b20a37fd5f94e0bb76` |
| 5 | `def` | [toposortDecls](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toposort/Variantb9809a4b80057a3ca407014e7a25b9fc924e71ec8168ae6038f163043884ee80.lean/declarations/toposortdecls--590221a2fd36472b2ca4abb4.md) | 74 | `declaration-track:590221a2fd36472b2ca4abb446ecc79d4e80c69ae494b2e97c802cc732293191` |
| 6 | `def` | [toposortPass](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toposort/Variantb9809a4b80057a3ca407014e7a25b9fc924e71ec8168ae6038f163043884ee80.lean/declarations/toposortpass--c594b02bdc9e5b43cc45fc05.md) | 77 | `declaration-track:c594b02bdc9e5b43cc45fc05bbc55a9216ed97b3eda1de46d41469de2fdd55d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bcc9347d0f4eb3d31d94e386516b59998f8244167792f46a9b684c0076ece152 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toposort/Variantb9809a4b80057a3ca407014e7a25b9fc924e71ec8168ae6038f163043884ee80.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toposort/Variantb9809a4b80057a3ca407014e7a25b9fc924e71ec8168ae6038f163043884ee80.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
