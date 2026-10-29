-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.MetadataType.Variant48631fb96eee5aaef14ab416c83e4fa33b37565e039147ba5eb2fba73aef47c4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"48631fb96eee5aaef14ab416c83e4fa33b37565e039147ba5eb2fba73aef47c4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.MetadataType.Variant48631fb96eee5aaef14ab416c83e4fa33b37565e039147ba5eb2fba73aef47c4","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"48631fb96eee5aaef14ab416c83e4fa33b37565e039147ba5eb2fba73aef47c4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemanticTokenization/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.Context

/-!
# Dependent metadata values
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.MetadataType.Variant48631fb96eee5aaef14ab416c83e4fa33b37565e039147ba5eb2fba73aef47c4

namespace Mathematics.SemanticTokenization

inductive MetadataType
  | lexeme
  | partOfSpeech
  | lemma
  | morphology
  | syntacticRole
  | frame
  | domain
  | polarity
  | modality
  | figurativeStatus
  | register
  | concept
  | argumentRole
  | discourseRole
  | referent
  | evidenceClass
  | confidenceBand
deriving DecidableEq, Ord, Repr

inductive PartOfSpeech
  | noun
  | verb
  | adjective
  | adverb
  | pronoun
  | determiner
  | preposition
  | conjunction
  | particle
  | punctuation
  | other
deriving DecidableEq, Repr

inductive Polarity
  | positive
  | negative
  | neutral
  | unresolved
deriving DecidableEq, Repr

inductive Modality
  | asserted
  | possible
  | necessary
  | permitted
  | obligatory
  | counterfactual
  | unresolved
deriving DecidableEq, Repr

inductive FigurativeStatus
  | literal
  | metaphorical
  | idiomatic
  | mixed
  | unresolved
deriving DecidableEq, Repr

def MetadataValue : MetadataType → Type
  | .partOfSpeech => PartOfSpeech
  | .lexeme => String
  | .lemma => String
  | .morphology => String
  | .syntacticRole => String
  | .frame => String
  | .domain => String
  | .polarity => Polarity
  | .modality => Modality
  | .figurativeStatus => FigurativeStatus
  | .register => String
  | .concept => ConceptId
  | .argumentRole => String
  | .discourseRole => String
  | .referent => String
  | .evidenceClass => AuthorityClass
  | .confidenceBand => Nat

structure MetadataSchema where
  enabled : Finset MetadataType
  schemaDigest : Digest
  finite : Prop

end Mathematics.SemanticTokenization
