# Command Namespaced Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `20f60f02ac3e4e5483013a06a16eaba63165f523` · SHA-256 `0f970b7514030089f6b15e49bebe648b83c9c51f906281c5ffcdc8606c822e39`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ByteRange.Variante1258bb9ab1789364a716a42b32739376100a6f2320e1c0050654dc2b06bc643","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e1258bb9ab1789364a716a42b32739376100a6f2320e1c0050654dc2b06bc643","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ByteRange.Variante1258bb9ab1789364a716a42b32739376100a6f2320e1c0050654dc2b06bc643","mathematical_subject":"Computation.DataStructures","original_sha256":"e1258bb9ab1789364a716a42b32739376100a6f2320e1c0050654dc2b06bc643","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/Atom/Command.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.Atom.Id

/-! # Lean-front-end source command records -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ByteRange.Variante1258bb9ab1789364a716a42b32739376100a6f2320e1c0050654dc2b06bc643

namespace MathDiscovery.Atom

open MathDiscovery

structure ByteRange where
  start : Nat
  stop : Nat
  deriving DecidableEq, Repr, Inhabited

def ByteRange.Valid (range : ByteRange) : Prop :=
  range.start ≤ range.stop

structure LineColumnRange where
  startLine : Nat
  startColumn : Nat
  stopLine : Nat
  stopColumn : Nat
  deriving DecidableEq, Repr, Inhabited

inductive CommandAuthority
  | leanFrontend
  | compiledEnvironment
  | aligned
  | sourceOnly
  | unresolved
  deriving DecidableEq, Repr, Inhabited

structure CommandRecord where
  id : SourceCommandId
  fileId : SourceFileId
  ordinal : Nat
  bytes : ByteRange
  position : LineColumnRange
  syntaxKind : String
  rawDigest : Digest
  canonicalSyntaxDigest : Digest
  leadingTriviaDigest : Digest
  trailingTriviaDigest : Digest
  contextBefore : SourceContextId
  contextAfter : SourceContextId
  emittedDeclarations : Array ExtractorDeclarationId
  generatedDeclarations : Array ExtractorDeclarationId
  referencedCommands : Array SourceCommandId
  attachedAttributes : Array SourceCommandId
  attachedDocumentation : Option SourceCommandId
  environmentBefore : Digest
  environmentAfter : Digest
  authority : CommandAuthority
  deriving DecidableEq, Repr

end MathDiscovery.Atom
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2bf5580bf428b01a81694344387e4d4a00a7ae652b49099455711efb4db98c13 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Command/Variant0c6654ad0361395038cbe082beab11d9c6baa81612ab4dd77a56d5878f4e06c4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
