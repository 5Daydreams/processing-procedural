// Generated from C:\Users\fry\processing4\java/src/processing/mode/java/preproc/Processing.g4 by ANTLR 4.7.2
package processing.mode.java.preproc;
import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.misc.*;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class ProcessingLexer extends Lexer {
	static { RuntimeMetaData.checkVersion("4.7.2", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, HexColorLiteral=2, WS=3, COMMENT=4, LINE_COMMENT=5, CHAR_LITERAL=6, 
		ABSTRACT=7, ASSERT=8, BOOLEAN=9, BREAK=10, BYTE=11, CASE=12, CATCH=13, 
		CHAR=14, CLASS=15, CONST=16, CONTINUE=17, DEFAULT=18, DO=19, DOUBLE=20, 
		ELSE=21, ENUM=22, EXTENDS=23, FINAL=24, FINALLY=25, FLOAT=26, FOR=27, 
		IF=28, GOTO=29, IMPLEMENTS=30, IMPORT=31, INSTANCEOF=32, INT=33, INTERFACE=34, 
		LONG=35, NATIVE=36, NEW=37, PACKAGE=38, PRIVATE=39, PROTECTED=40, PUBLIC=41, 
		RETURN=42, SHORT=43, STATIC=44, STRICTFP=45, SUPER=46, SWITCH=47, SYNCHRONIZED=48, 
		THIS=49, THROW=50, THROWS=51, TRANSIENT=52, TRY=53, VAR=54, VOID=55, VOLATILE=56, 
		WHILE=57, DECIMAL_LITERAL=58, HEX_LITERAL=59, OCT_LITERAL=60, BINARY_LITERAL=61, 
		FLOAT_LITERAL=62, HEX_FLOAT_LITERAL=63, BOOL_LITERAL=64, STRING_LITERAL=65, 
		NULL_LITERAL=66, LPAREN=67, RPAREN=68, LBRACE=69, RBRACE=70, LBRACK=71, 
		RBRACK=72, SEMI=73, COMMA=74, DOT=75, ASSIGN=76, GT=77, LT=78, BANG=79, 
		TILDE=80, QUESTION=81, COLON=82, EQUAL=83, LE=84, GE=85, NOTEQUAL=86, 
		AND=87, OR=88, INC=89, DEC=90, ADD=91, SUB=92, MUL=93, DIV=94, BITAND=95, 
		BITOR=96, CARET=97, MOD=98, ADD_ASSIGN=99, SUB_ASSIGN=100, MUL_ASSIGN=101, 
		DIV_ASSIGN=102, AND_ASSIGN=103, OR_ASSIGN=104, XOR_ASSIGN=105, MOD_ASSIGN=106, 
		LSHIFT_ASSIGN=107, RSHIFT_ASSIGN=108, URSHIFT_ASSIGN=109, ARROW=110, COLONCOLON=111, 
		AT=112, ELLIPSIS=113, IDENTIFIER=114;
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	private static String[] makeRuleNames() {
		return new String[] {
			"T__0", "HexColorLiteral", "WS", "COMMENT", "LINE_COMMENT", "CHAR_LITERAL", 
			"ABSTRACT", "ASSERT", "BOOLEAN", "BREAK", "BYTE", "CASE", "CATCH", "CHAR", 
			"CLASS", "CONST", "CONTINUE", "DEFAULT", "DO", "DOUBLE", "ELSE", "ENUM", 
			"EXTENDS", "FINAL", "FINALLY", "FLOAT", "FOR", "IF", "GOTO", "IMPLEMENTS", 
			"IMPORT", "INSTANCEOF", "INT", "INTERFACE", "LONG", "NATIVE", "NEW", 
			"PACKAGE", "PRIVATE", "PROTECTED", "PUBLIC", "RETURN", "SHORT", "STATIC", 
			"STRICTFP", "SUPER", "SWITCH", "SYNCHRONIZED", "THIS", "THROW", "THROWS", 
			"TRANSIENT", "TRY", "VAR", "VOID", "VOLATILE", "WHILE", "DECIMAL_LITERAL", 
			"HEX_LITERAL", "OCT_LITERAL", "BINARY_LITERAL", "FLOAT_LITERAL", "HEX_FLOAT_LITERAL", 
			"BOOL_LITERAL", "STRING_LITERAL", "NULL_LITERAL", "LPAREN", "RPAREN", 
			"LBRACE", "RBRACE", "LBRACK", "RBRACK", "SEMI", "COMMA", "DOT", "ASSIGN", 
			"GT", "LT", "BANG", "TILDE", "QUESTION", "COLON", "EQUAL", "LE", "GE", 
			"NOTEQUAL", "AND", "OR", "INC", "DEC", "ADD", "SUB", "MUL", "DIV", "BITAND", 
			"BITOR", "CARET", "MOD", "ADD_ASSIGN", "SUB_ASSIGN", "MUL_ASSIGN", "DIV_ASSIGN", 
			"AND_ASSIGN", "OR_ASSIGN", "XOR_ASSIGN", "MOD_ASSIGN", "LSHIFT_ASSIGN", 
			"RSHIFT_ASSIGN", "URSHIFT_ASSIGN", "ARROW", "COLONCOLON", "AT", "ELLIPSIS", 
			"IDENTIFIER", "ExponentPart", "EscapeSequence", "HexDigits", "HexDigit", 
			"Digits", "LetterOrDigit", "Letter"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'color'", null, null, null, null, null, "'abstract'", "'assert'", 
			"'boolean'", "'break'", "'byte'", "'case'", "'catch'", "'char'", "'class'", 
			"'const'", "'continue'", "'default'", "'do'", "'double'", "'else'", "'enum'", 
			"'extends'", "'final'", "'finally'", "'float'", "'for'", "'if'", "'goto'", 
			"'implements'", "'import'", "'instanceof'", "'int'", "'interface'", "'long'", 
			"'native'", "'new'", "'package'", "'private'", "'protected'", "'public'", 
			"'return'", "'short'", "'static'", "'strictfp'", "'super'", "'switch'", 
			"'synchronized'", "'this'", "'throw'", "'throws'", "'transient'", "'try'", 
			"'var'", "'void'", "'volatile'", "'while'", null, null, null, null, null, 
			null, null, null, "'null'", "'('", "')'", "'{'", "'}'", "'['", "']'", 
			"';'", "','", "'.'", "'='", "'>'", "'<'", "'!'", "'~'", "'?'", "':'", 
			"'=='", "'<='", "'>='", "'!='", "'&&'", "'||'", "'++'", "'--'", "'+'", 
			"'-'", "'*'", "'/'", "'&'", "'|'", "'^'", "'%'", "'+='", "'-='", "'*='", 
			"'/='", "'&='", "'|='", "'^='", "'%='", "'<<='", "'>>='", "'>>>='", "'->'", 
			"'::'", "'@'", "'...'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, "HexColorLiteral", "WS", "COMMENT", "LINE_COMMENT", "CHAR_LITERAL", 
			"ABSTRACT", "ASSERT", "BOOLEAN", "BREAK", "BYTE", "CASE", "CATCH", "CHAR", 
			"CLASS", "CONST", "CONTINUE", "DEFAULT", "DO", "DOUBLE", "ELSE", "ENUM", 
			"EXTENDS", "FINAL", "FINALLY", "FLOAT", "FOR", "IF", "GOTO", "IMPLEMENTS", 
			"IMPORT", "INSTANCEOF", "INT", "INTERFACE", "LONG", "NATIVE", "NEW", 
			"PACKAGE", "PRIVATE", "PROTECTED", "PUBLIC", "RETURN", "SHORT", "STATIC", 
			"STRICTFP", "SUPER", "SWITCH", "SYNCHRONIZED", "THIS", "THROW", "THROWS", 
			"TRANSIENT", "TRY", "VAR", "VOID", "VOLATILE", "WHILE", "DECIMAL_LITERAL", 
			"HEX_LITERAL", "OCT_LITERAL", "BINARY_LITERAL", "FLOAT_LITERAL", "HEX_FLOAT_LITERAL", 
			"BOOL_LITERAL", "STRING_LITERAL", "NULL_LITERAL", "LPAREN", "RPAREN", 
			"LBRACE", "RBRACE", "LBRACK", "RBRACK", "SEMI", "COMMA", "DOT", "ASSIGN", 
			"GT", "LT", "BANG", "TILDE", "QUESTION", "COLON", "EQUAL", "LE", "GE", 
			"NOTEQUAL", "AND", "OR", "INC", "DEC", "ADD", "SUB", "MUL", "DIV", "BITAND", 
			"BITOR", "CARET", "MOD", "ADD_ASSIGN", "SUB_ASSIGN", "MUL_ASSIGN", "DIV_ASSIGN", 
			"AND_ASSIGN", "OR_ASSIGN", "XOR_ASSIGN", "MOD_ASSIGN", "LSHIFT_ASSIGN", 
			"RSHIFT_ASSIGN", "URSHIFT_ASSIGN", "ARROW", "COLONCOLON", "AT", "ELLIPSIS", 
			"IDENTIFIER"
		};
	}
	private static final String[] _SYMBOLIC_NAMES = makeSymbolicNames();
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}


		public static final int WHITESPACE = 1;
		public static final int COMMENTS = 2;


	public ProcessingLexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "Processing.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public String[] getChannelNames() { return channelNames; }

	@Override
	public String[] getModeNames() { return modeNames; }

	@Override
	public ATN getATN() { return _ATN; }

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\2t\u03d3\b\1\4\2\t"+
		"\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13"+
		"\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30\4\31\t\31"+
		"\4\32\t\32\4\33\t\33\4\34\t\34\4\35\t\35\4\36\t\36\4\37\t\37\4 \t \4!"+
		"\t!\4\"\t\"\4#\t#\4$\t$\4%\t%\4&\t&\4\'\t\'\4(\t(\4)\t)\4*\t*\4+\t+\4"+
		",\t,\4-\t-\4.\t.\4/\t/\4\60\t\60\4\61\t\61\4\62\t\62\4\63\t\63\4\64\t"+
		"\64\4\65\t\65\4\66\t\66\4\67\t\67\48\t8\49\t9\4:\t:\4;\t;\4<\t<\4=\t="+
		"\4>\t>\4?\t?\4@\t@\4A\tA\4B\tB\4C\tC\4D\tD\4E\tE\4F\tF\4G\tG\4H\tH\4I"+
		"\tI\4J\tJ\4K\tK\4L\tL\4M\tM\4N\tN\4O\tO\4P\tP\4Q\tQ\4R\tR\4S\tS\4T\tT"+
		"\4U\tU\4V\tV\4W\tW\4X\tX\4Y\tY\4Z\tZ\4[\t[\4\\\t\\\4]\t]\4^\t^\4_\t_\4"+
		"`\t`\4a\ta\4b\tb\4c\tc\4d\td\4e\te\4f\tf\4g\tg\4h\th\4i\ti\4j\tj\4k\t"+
		"k\4l\tl\4m\tm\4n\tn\4o\to\4p\tp\4q\tq\4r\tr\4s\ts\4t\tt\4u\tu\4v\tv\4"+
		"w\tw\4x\tx\4y\ty\4z\tz\3\2\3\2\3\2\3\2\3\2\3\2\3\3\3\3\3\3\3\3\5\3\u0100"+
		"\n\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\4\6\4\u010a\n\4\r\4\16\4\u010b\3\4"+
		"\3\4\3\5\3\5\3\5\3\5\7\5\u0114\n\5\f\5\16\5\u0117\13\5\3\5\3\5\3\5\3\5"+
		"\3\5\3\6\3\6\3\6\3\6\7\6\u0122\n\6\f\6\16\6\u0125\13\6\3\6\3\6\3\7\3\7"+
		"\3\7\7\7\u012c\n\7\f\7\16\7\u012f\13\7\3\7\3\7\3\b\3\b\3\b\3\b\3\b\3\b"+
		"\3\b\3\b\3\b\3\t\3\t\3\t\3\t\3\t\3\t\3\t\3\n\3\n\3\n\3\n\3\n\3\n\3\n\3"+
		"\n\3\13\3\13\3\13\3\13\3\13\3\13\3\f\3\f\3\f\3\f\3\f\3\r\3\r\3\r\3\r\3"+
		"\r\3\16\3\16\3\16\3\16\3\16\3\16\3\17\3\17\3\17\3\17\3\17\3\20\3\20\3"+
		"\20\3\20\3\20\3\20\3\21\3\21\3\21\3\21\3\21\3\21\3\22\3\22\3\22\3\22\3"+
		"\22\3\22\3\22\3\22\3\22\3\23\3\23\3\23\3\23\3\23\3\23\3\23\3\23\3\24\3"+
		"\24\3\24\3\25\3\25\3\25\3\25\3\25\3\25\3\25\3\26\3\26\3\26\3\26\3\26\3"+
		"\27\3\27\3\27\3\27\3\27\3\30\3\30\3\30\3\30\3\30\3\30\3\30\3\30\3\31\3"+
		"\31\3\31\3\31\3\31\3\31\3\32\3\32\3\32\3\32\3\32\3\32\3\32\3\32\3\33\3"+
		"\33\3\33\3\33\3\33\3\33\3\34\3\34\3\34\3\34\3\35\3\35\3\35\3\36\3\36\3"+
		"\36\3\36\3\36\3\37\3\37\3\37\3\37\3\37\3\37\3\37\3\37\3\37\3\37\3\37\3"+
		" \3 \3 \3 \3 \3 \3 \3!\3!\3!\3!\3!\3!\3!\3!\3!\3!\3!\3\"\3\"\3\"\3\"\3"+
		"#\3#\3#\3#\3#\3#\3#\3#\3#\3#\3$\3$\3$\3$\3$\3%\3%\3%\3%\3%\3%\3%\3&\3"+
		"&\3&\3&\3\'\3\'\3\'\3\'\3\'\3\'\3\'\3\'\3(\3(\3(\3(\3(\3(\3(\3(\3)\3)"+
		"\3)\3)\3)\3)\3)\3)\3)\3)\3*\3*\3*\3*\3*\3*\3*\3+\3+\3+\3+\3+\3+\3+\3,"+
		"\3,\3,\3,\3,\3,\3-\3-\3-\3-\3-\3-\3-\3.\3.\3.\3.\3.\3.\3.\3.\3.\3/\3/"+
		"\3/\3/\3/\3/\3\60\3\60\3\60\3\60\3\60\3\60\3\60\3\61\3\61\3\61\3\61\3"+
		"\61\3\61\3\61\3\61\3\61\3\61\3\61\3\61\3\61\3\62\3\62\3\62\3\62\3\62\3"+
		"\63\3\63\3\63\3\63\3\63\3\63\3\64\3\64\3\64\3\64\3\64\3\64\3\64\3\65\3"+
		"\65\3\65\3\65\3\65\3\65\3\65\3\65\3\65\3\65\3\66\3\66\3\66\3\66\3\67\3"+
		"\67\3\67\3\67\38\38\38\38\38\39\39\39\39\39\39\39\39\39\3:\3:\3:\3:\3"+
		":\3:\3;\3;\3;\5;\u028d\n;\3;\6;\u0290\n;\r;\16;\u0291\3;\5;\u0295\n;\5"+
		";\u0297\n;\3;\5;\u029a\n;\3<\3<\3<\3<\7<\u02a0\n<\f<\16<\u02a3\13<\3<"+
		"\5<\u02a6\n<\3<\5<\u02a9\n<\3=\3=\7=\u02ad\n=\f=\16=\u02b0\13=\3=\3=\7"+
		"=\u02b4\n=\f=\16=\u02b7\13=\3=\5=\u02ba\n=\3=\5=\u02bd\n=\3>\3>\3>\3>"+
		"\7>\u02c3\n>\f>\16>\u02c6\13>\3>\5>\u02c9\n>\3>\5>\u02cc\n>\3?\3?\3?\5"+
		"?\u02d1\n?\3?\3?\5?\u02d5\n?\3?\5?\u02d8\n?\3?\5?\u02db\n?\3?\3?\3?\5"+
		"?\u02e0\n?\3?\5?\u02e3\n?\5?\u02e5\n?\3@\3@\3@\3@\5@\u02eb\n@\3@\5@\u02ee"+
		"\n@\3@\3@\5@\u02f2\n@\3@\3@\5@\u02f6\n@\3@\3@\5@\u02fa\n@\3A\3A\3A\3A"+
		"\3A\3A\3A\3A\3A\5A\u0305\nA\3B\3B\3B\7B\u030a\nB\fB\16B\u030d\13B\3B\3"+
		"B\3C\3C\3C\3C\3C\3D\3D\3E\3E\3F\3F\3G\3G\3H\3H\3I\3I\3J\3J\3K\3K\3L\3"+
		"L\3M\3M\3N\3N\3O\3O\3P\3P\3Q\3Q\3R\3R\3S\3S\3T\3T\3T\3U\3U\3U\3V\3V\3"+
		"V\3W\3W\3W\3X\3X\3X\3Y\3Y\3Y\3Z\3Z\3Z\3[\3[\3[\3\\\3\\\3]\3]\3^\3^\3_"+
		"\3_\3`\3`\3a\3a\3b\3b\3c\3c\3d\3d\3d\3e\3e\3e\3f\3f\3f\3g\3g\3g\3h\3h"+
		"\3h\3i\3i\3i\3j\3j\3j\3k\3k\3k\3l\3l\3l\3l\3m\3m\3m\3m\3n\3n\3n\3n\3n"+
		"\3o\3o\3o\3p\3p\3p\3q\3q\3r\3r\3r\3r\3s\3s\7s\u0391\ns\fs\16s\u0394\13"+
		"s\3t\3t\5t\u0398\nt\3t\3t\3u\3u\3u\3u\5u\u03a0\nu\3u\5u\u03a3\nu\3u\3"+
		"u\3u\6u\u03a8\nu\ru\16u\u03a9\3u\3u\3u\3u\3u\5u\u03b1\nu\3v\3v\3v\7v\u03b6"+
		"\nv\fv\16v\u03b9\13v\3v\5v\u03bc\nv\3w\3w\3x\3x\7x\u03c2\nx\fx\16x\u03c5"+
		"\13x\3x\5x\u03c8\nx\3y\3y\5y\u03cc\ny\3z\3z\3z\3z\5z\u03d2\nz\3\u0115"+
		"\2{\3\3\5\4\7\5\t\6\13\7\r\b\17\t\21\n\23\13\25\f\27\r\31\16\33\17\35"+
		"\20\37\21!\22#\23%\24\'\25)\26+\27-\30/\31\61\32\63\33\65\34\67\359\36"+
		";\37= ?!A\"C#E$G%I&K\'M(O)Q*S+U,W-Y.[/]\60_\61a\62c\63e\64g\65i\66k\67"+
		"m8o9q:s;u<w=y>{?}@\177A\u0081B\u0083C\u0085D\u0087E\u0089F\u008bG\u008d"+
		"H\u008fI\u0091J\u0093K\u0095L\u0097M\u0099N\u009bO\u009dP\u009fQ\u00a1"+
		"R\u00a3S\u00a5T\u00a7U\u00a9V\u00abW\u00adX\u00afY\u00b1Z\u00b3[\u00b5"+
		"\\\u00b7]\u00b9^\u00bb_\u00bd`\u00bfa\u00c1b\u00c3c\u00c5d\u00c7e\u00c9"+
		"f\u00cbg\u00cdh\u00cfi\u00d1j\u00d3k\u00d5l\u00d7m\u00d9n\u00dbo\u00dd"+
		"p\u00dfq\u00e1r\u00e3s\u00e5t\u00e7\2\u00e9\2\u00eb\2\u00ed\2\u00ef\2"+
		"\u00f1\2\u00f3\2\3\2\34\5\2\13\f\16\17\"\"\4\2\f\f\17\17\6\2\f\f\17\17"+
		"))^^\3\2\63;\4\2NNnn\4\2ZZzz\5\2\62;CHch\6\2\62;CHaach\3\2\629\4\2\62"+
		"9aa\4\2DDdd\3\2\62\63\4\2\62\63aa\6\2FFHHffhh\4\2RRrr\4\2--//\6\2\f\f"+
		"\17\17$$^^\4\2GGgg\n\2$$))^^ddhhppttvv\3\2\62\65\3\2\62;\4\2\62;aa\6\2"+
		"&&C\\aac|\4\2\2\u0081\ud802\udc01\3\2\ud802\udc01\3\2\udc02\ue001\2\u03fe"+
		"\2\3\3\2\2\2\2\5\3\2\2\2\2\7\3\2\2\2\2\t\3\2\2\2\2\13\3\2\2\2\2\r\3\2"+
		"\2\2\2\17\3\2\2\2\2\21\3\2\2\2\2\23\3\2\2\2\2\25\3\2\2\2\2\27\3\2\2\2"+
		"\2\31\3\2\2\2\2\33\3\2\2\2\2\35\3\2\2\2\2\37\3\2\2\2\2!\3\2\2\2\2#\3\2"+
		"\2\2\2%\3\2\2\2\2\'\3\2\2\2\2)\3\2\2\2\2+\3\2\2\2\2-\3\2\2\2\2/\3\2\2"+
		"\2\2\61\3\2\2\2\2\63\3\2\2\2\2\65\3\2\2\2\2\67\3\2\2\2\29\3\2\2\2\2;\3"+
		"\2\2\2\2=\3\2\2\2\2?\3\2\2\2\2A\3\2\2\2\2C\3\2\2\2\2E\3\2\2\2\2G\3\2\2"+
		"\2\2I\3\2\2\2\2K\3\2\2\2\2M\3\2\2\2\2O\3\2\2\2\2Q\3\2\2\2\2S\3\2\2\2\2"+
		"U\3\2\2\2\2W\3\2\2\2\2Y\3\2\2\2\2[\3\2\2\2\2]\3\2\2\2\2_\3\2\2\2\2a\3"+
		"\2\2\2\2c\3\2\2\2\2e\3\2\2\2\2g\3\2\2\2\2i\3\2\2\2\2k\3\2\2\2\2m\3\2\2"+
		"\2\2o\3\2\2\2\2q\3\2\2\2\2s\3\2\2\2\2u\3\2\2\2\2w\3\2\2\2\2y\3\2\2\2\2"+
		"{\3\2\2\2\2}\3\2\2\2\2\177\3\2\2\2\2\u0081\3\2\2\2\2\u0083\3\2\2\2\2\u0085"+
		"\3\2\2\2\2\u0087\3\2\2\2\2\u0089\3\2\2\2\2\u008b\3\2\2\2\2\u008d\3\2\2"+
		"\2\2\u008f\3\2\2\2\2\u0091\3\2\2\2\2\u0093\3\2\2\2\2\u0095\3\2\2\2\2\u0097"+
		"\3\2\2\2\2\u0099\3\2\2\2\2\u009b\3\2\2\2\2\u009d\3\2\2\2\2\u009f\3\2\2"+
		"\2\2\u00a1\3\2\2\2\2\u00a3\3\2\2\2\2\u00a5\3\2\2\2\2\u00a7\3\2\2\2\2\u00a9"+
		"\3\2\2\2\2\u00ab\3\2\2\2\2\u00ad\3\2\2\2\2\u00af\3\2\2\2\2\u00b1\3\2\2"+
		"\2\2\u00b3\3\2\2\2\2\u00b5\3\2\2\2\2\u00b7\3\2\2\2\2\u00b9\3\2\2\2\2\u00bb"+
		"\3\2\2\2\2\u00bd\3\2\2\2\2\u00bf\3\2\2\2\2\u00c1\3\2\2\2\2\u00c3\3\2\2"+
		"\2\2\u00c5\3\2\2\2\2\u00c7\3\2\2\2\2\u00c9\3\2\2\2\2\u00cb\3\2\2\2\2\u00cd"+
		"\3\2\2\2\2\u00cf\3\2\2\2\2\u00d1\3\2\2\2\2\u00d3\3\2\2\2\2\u00d5\3\2\2"+
		"\2\2\u00d7\3\2\2\2\2\u00d9\3\2\2\2\2\u00db\3\2\2\2\2\u00dd\3\2\2\2\2\u00df"+
		"\3\2\2\2\2\u00e1\3\2\2\2\2\u00e3\3\2\2\2\2\u00e5\3\2\2\2\3\u00f5\3\2\2"+
		"\2\5\u00fb\3\2\2\2\7\u0109\3\2\2\2\t\u010f\3\2\2\2\13\u011d\3\2\2\2\r"+
		"\u0128\3\2\2\2\17\u0132\3\2\2\2\21\u013b\3\2\2\2\23\u0142\3\2\2\2\25\u014a"+
		"\3\2\2\2\27\u0150\3\2\2\2\31\u0155\3\2\2\2\33\u015a\3\2\2\2\35\u0160\3"+
		"\2\2\2\37\u0165\3\2\2\2!\u016b\3\2\2\2#\u0171\3\2\2\2%\u017a\3\2\2\2\'"+
		"\u0182\3\2\2\2)\u0185\3\2\2\2+\u018c\3\2\2\2-\u0191\3\2\2\2/\u0196\3\2"+
		"\2\2\61\u019e\3\2\2\2\63\u01a4\3\2\2\2\65\u01ac\3\2\2\2\67\u01b2\3\2\2"+
		"\29\u01b6\3\2\2\2;\u01b9\3\2\2\2=\u01be\3\2\2\2?\u01c9\3\2\2\2A\u01d0"+
		"\3\2\2\2C\u01db\3\2\2\2E\u01df\3\2\2\2G\u01e9\3\2\2\2I\u01ee\3\2\2\2K"+
		"\u01f5\3\2\2\2M\u01f9\3\2\2\2O\u0201\3\2\2\2Q\u0209\3\2\2\2S\u0213\3\2"+
		"\2\2U\u021a\3\2\2\2W\u0221\3\2\2\2Y\u0227\3\2\2\2[\u022e\3\2\2\2]\u0237"+
		"\3\2\2\2_\u023d\3\2\2\2a\u0244\3\2\2\2c\u0251\3\2\2\2e\u0256\3\2\2\2g"+
		"\u025c\3\2\2\2i\u0263\3\2\2\2k\u026d\3\2\2\2m\u0271\3\2\2\2o\u0275\3\2"+
		"\2\2q\u027a\3\2\2\2s\u0283\3\2\2\2u\u0296\3\2\2\2w\u029b\3\2\2\2y\u02aa"+
		"\3\2\2\2{\u02be\3\2\2\2}\u02e4\3\2\2\2\177\u02e6\3\2\2\2\u0081\u0304\3"+
		"\2\2\2\u0083\u0306\3\2\2\2\u0085\u0310\3\2\2\2\u0087\u0315\3\2\2\2\u0089"+
		"\u0317\3\2\2\2\u008b\u0319\3\2\2\2\u008d\u031b\3\2\2\2\u008f\u031d\3\2"+
		"\2\2\u0091\u031f\3\2\2\2\u0093\u0321\3\2\2\2\u0095\u0323\3\2\2\2\u0097"+
		"\u0325\3\2\2\2\u0099\u0327\3\2\2\2\u009b\u0329\3\2\2\2\u009d\u032b\3\2"+
		"\2\2\u009f\u032d\3\2\2\2\u00a1\u032f\3\2\2\2\u00a3\u0331\3\2\2\2\u00a5"+
		"\u0333\3\2\2\2\u00a7\u0335\3\2\2\2\u00a9\u0338\3\2\2\2\u00ab\u033b\3\2"+
		"\2\2\u00ad\u033e\3\2\2\2\u00af\u0341\3\2\2\2\u00b1\u0344\3\2\2\2\u00b3"+
		"\u0347\3\2\2\2\u00b5\u034a\3\2\2\2\u00b7\u034d\3\2\2\2\u00b9\u034f\3\2"+
		"\2\2\u00bb\u0351\3\2\2\2\u00bd\u0353\3\2\2\2\u00bf\u0355\3\2\2\2\u00c1"+
		"\u0357\3\2\2\2\u00c3\u0359\3\2\2\2\u00c5\u035b\3\2\2\2\u00c7\u035d\3\2"+
		"\2\2\u00c9\u0360\3\2\2\2\u00cb\u0363\3\2\2\2\u00cd\u0366\3\2\2\2\u00cf"+
		"\u0369\3\2\2\2\u00d1\u036c\3\2\2\2\u00d3\u036f\3\2\2\2\u00d5\u0372\3\2"+
		"\2\2\u00d7\u0375\3\2\2\2\u00d9\u0379\3\2\2\2\u00db\u037d\3\2\2\2\u00dd"+
		"\u0382\3\2\2\2\u00df\u0385\3\2\2\2\u00e1\u0388\3\2\2\2\u00e3\u038a\3\2"+
		"\2\2\u00e5\u038e\3\2\2\2\u00e7\u0395\3\2\2\2\u00e9\u03b0\3\2\2\2\u00eb"+
		"\u03b2\3\2\2\2\u00ed\u03bd\3\2\2\2\u00ef\u03bf\3\2\2\2\u00f1\u03cb\3\2"+
		"\2\2\u00f3\u03d1\3\2\2\2\u00f5\u00f6\7e\2\2\u00f6\u00f7\7q\2\2\u00f7\u00f8"+
		"\7n\2\2\u00f8\u00f9\7q\2\2\u00f9\u00fa\7t\2\2\u00fa\4\3\2\2\2\u00fb\u00ff"+
		"\7%\2\2\u00fc\u00fd\5\u00edw\2\u00fd\u00fe\5\u00edw\2\u00fe\u0100\3\2"+
		"\2\2\u00ff\u00fc\3\2\2\2\u00ff\u0100\3\2\2\2\u0100\u0101\3\2\2\2\u0101"+
		"\u0102\5\u00edw\2\u0102\u0103\5\u00edw\2\u0103\u0104\5\u00edw\2\u0104"+
		"\u0105\5\u00edw\2\u0105\u0106\5\u00edw\2\u0106\u0107\5\u00edw\2\u0107"+
		"\6\3\2\2\2\u0108\u010a\t\2\2\2\u0109\u0108\3\2\2\2\u010a\u010b\3\2\2\2"+
		"\u010b\u0109\3\2\2\2\u010b\u010c\3\2\2\2\u010c\u010d\3\2\2\2\u010d\u010e"+
		"\b\4\2\2\u010e\b\3\2\2\2\u010f\u0110\7\61\2\2\u0110\u0111\7,\2\2\u0111"+
		"\u0115\3\2\2\2\u0112\u0114\13\2\2\2\u0113\u0112\3\2\2\2\u0114\u0117\3"+
		"\2\2\2\u0115\u0116\3\2\2\2\u0115\u0113\3\2\2\2\u0116\u0118\3\2\2\2\u0117"+
		"\u0115\3\2\2\2\u0118\u0119\7,\2\2\u0119\u011a\7\61\2\2\u011a\u011b\3\2"+
		"\2\2\u011b\u011c\b\5\3\2\u011c\n\3\2\2\2\u011d\u011e\7\61\2\2\u011e\u011f"+
		"\7\61\2\2\u011f\u0123\3\2\2\2\u0120\u0122\n\3\2\2\u0121\u0120\3\2\2\2"+
		"\u0122\u0125\3\2\2\2\u0123\u0121\3\2\2\2\u0123\u0124\3\2\2\2\u0124\u0126"+
		"\3\2\2\2\u0125\u0123\3\2\2\2\u0126\u0127\b\6\3\2\u0127\f\3\2\2\2\u0128"+
		"\u012d\7)\2\2\u0129\u012c\n\4\2\2\u012a\u012c\5\u00e9u\2\u012b\u0129\3"+
		"\2\2\2\u012b\u012a\3\2\2\2\u012c\u012f\3\2\2\2\u012d\u012b\3\2\2\2\u012d"+
		"\u012e\3\2\2\2\u012e\u0130\3\2\2\2\u012f\u012d\3\2\2\2\u0130\u0131\7)"+
		"\2\2\u0131\16\3\2\2\2\u0132\u0133\7c\2\2\u0133\u0134\7d\2\2\u0134\u0135"+
		"\7u\2\2\u0135\u0136\7v\2\2\u0136\u0137\7t\2\2\u0137\u0138\7c\2\2\u0138"+
		"\u0139\7e\2\2\u0139\u013a\7v\2\2\u013a\20\3\2\2\2\u013b\u013c\7c\2\2\u013c"+
		"\u013d\7u\2\2\u013d\u013e\7u\2\2\u013e\u013f\7g\2\2\u013f\u0140\7t\2\2"+
		"\u0140\u0141\7v\2\2\u0141\22\3\2\2\2\u0142\u0143\7d\2\2\u0143\u0144\7"+
		"q\2\2\u0144\u0145\7q\2\2\u0145\u0146\7n\2\2\u0146\u0147\7g\2\2\u0147\u0148"+
		"\7c\2\2\u0148\u0149\7p\2\2\u0149\24\3\2\2\2\u014a\u014b\7d\2\2\u014b\u014c"+
		"\7t\2\2\u014c\u014d\7g\2\2\u014d\u014e\7c\2\2\u014e\u014f\7m\2\2\u014f"+
		"\26\3\2\2\2\u0150\u0151\7d\2\2\u0151\u0152\7{\2\2\u0152\u0153\7v\2\2\u0153"+
		"\u0154\7g\2\2\u0154\30\3\2\2\2\u0155\u0156\7e\2\2\u0156\u0157\7c\2\2\u0157"+
		"\u0158\7u\2\2\u0158\u0159\7g\2\2\u0159\32\3\2\2\2\u015a\u015b\7e\2\2\u015b"+
		"\u015c\7c\2\2\u015c\u015d\7v\2\2\u015d\u015e\7e\2\2\u015e\u015f\7j\2\2"+
		"\u015f\34\3\2\2\2\u0160\u0161\7e\2\2\u0161\u0162\7j\2\2\u0162\u0163\7"+
		"c\2\2\u0163\u0164\7t\2\2\u0164\36\3\2\2\2\u0165\u0166\7e\2\2\u0166\u0167"+
		"\7n\2\2\u0167\u0168\7c\2\2\u0168\u0169\7u\2\2\u0169\u016a\7u\2\2\u016a"+
		" \3\2\2\2\u016b\u016c\7e\2\2\u016c\u016d\7q\2\2\u016d\u016e\7p\2\2\u016e"+
		"\u016f\7u\2\2\u016f\u0170\7v\2\2\u0170\"\3\2\2\2\u0171\u0172\7e\2\2\u0172"+
		"\u0173\7q\2\2\u0173\u0174\7p\2\2\u0174\u0175\7v\2\2\u0175\u0176\7k\2\2"+
		"\u0176\u0177\7p\2\2\u0177\u0178\7w\2\2\u0178\u0179\7g\2\2\u0179$\3\2\2"+
		"\2\u017a\u017b\7f\2\2\u017b\u017c\7g\2\2\u017c\u017d\7h\2\2\u017d\u017e"+
		"\7c\2\2\u017e\u017f\7w\2\2\u017f\u0180\7n\2\2\u0180\u0181\7v\2\2\u0181"+
		"&\3\2\2\2\u0182\u0183\7f\2\2\u0183\u0184\7q\2\2\u0184(\3\2\2\2\u0185\u0186"+
		"\7f\2\2\u0186\u0187\7q\2\2\u0187\u0188\7w\2\2\u0188\u0189\7d\2\2\u0189"+
		"\u018a\7n\2\2\u018a\u018b\7g\2\2\u018b*\3\2\2\2\u018c\u018d\7g\2\2\u018d"+
		"\u018e\7n\2\2\u018e\u018f\7u\2\2\u018f\u0190\7g\2\2\u0190,\3\2\2\2\u0191"+
		"\u0192\7g\2\2\u0192\u0193\7p\2\2\u0193\u0194\7w\2\2\u0194\u0195\7o\2\2"+
		"\u0195.\3\2\2\2\u0196\u0197\7g\2\2\u0197\u0198\7z\2\2\u0198\u0199\7v\2"+
		"\2\u0199\u019a\7g\2\2\u019a\u019b\7p\2\2\u019b\u019c\7f\2\2\u019c\u019d"+
		"\7u\2\2\u019d\60\3\2\2\2\u019e\u019f\7h\2\2\u019f\u01a0\7k\2\2\u01a0\u01a1"+
		"\7p\2\2\u01a1\u01a2\7c\2\2\u01a2\u01a3\7n\2\2\u01a3\62\3\2\2\2\u01a4\u01a5"+
		"\7h\2\2\u01a5\u01a6\7k\2\2\u01a6\u01a7\7p\2\2\u01a7\u01a8\7c\2\2\u01a8"+
		"\u01a9\7n\2\2\u01a9\u01aa\7n\2\2\u01aa\u01ab\7{\2\2\u01ab\64\3\2\2\2\u01ac"+
		"\u01ad\7h\2\2\u01ad\u01ae\7n\2\2\u01ae\u01af\7q\2\2\u01af\u01b0\7c\2\2"+
		"\u01b0\u01b1\7v\2\2\u01b1\66\3\2\2\2\u01b2\u01b3\7h\2\2\u01b3\u01b4\7"+
		"q\2\2\u01b4\u01b5\7t\2\2\u01b58\3\2\2\2\u01b6\u01b7\7k\2\2\u01b7\u01b8"+
		"\7h\2\2\u01b8:\3\2\2\2\u01b9\u01ba\7i\2\2\u01ba\u01bb\7q\2\2\u01bb\u01bc"+
		"\7v\2\2\u01bc\u01bd\7q\2\2\u01bd<\3\2\2\2\u01be\u01bf\7k\2\2\u01bf\u01c0"+
		"\7o\2\2\u01c0\u01c1\7r\2\2\u01c1\u01c2\7n\2\2\u01c2\u01c3\7g\2\2\u01c3"+
		"\u01c4\7o\2\2\u01c4\u01c5\7g\2\2\u01c5\u01c6\7p\2\2\u01c6\u01c7\7v\2\2"+
		"\u01c7\u01c8\7u\2\2\u01c8>\3\2\2\2\u01c9\u01ca\7k\2\2\u01ca\u01cb\7o\2"+
		"\2\u01cb\u01cc\7r\2\2\u01cc\u01cd\7q\2\2\u01cd\u01ce\7t\2\2\u01ce\u01cf"+
		"\7v\2\2\u01cf@\3\2\2\2\u01d0\u01d1\7k\2\2\u01d1\u01d2\7p\2\2\u01d2\u01d3"+
		"\7u\2\2\u01d3\u01d4\7v\2\2\u01d4\u01d5\7c\2\2\u01d5\u01d6\7p\2\2\u01d6"+
		"\u01d7\7e\2\2\u01d7\u01d8\7g\2\2\u01d8\u01d9\7q\2\2\u01d9\u01da\7h\2\2"+
		"\u01daB\3\2\2\2\u01db\u01dc\7k\2\2\u01dc\u01dd\7p\2\2\u01dd\u01de\7v\2"+
		"\2\u01deD\3\2\2\2\u01df\u01e0\7k\2\2\u01e0\u01e1\7p\2\2\u01e1\u01e2\7"+
		"v\2\2\u01e2\u01e3\7g\2\2\u01e3\u01e4\7t\2\2\u01e4\u01e5\7h\2\2\u01e5\u01e6"+
		"\7c\2\2\u01e6\u01e7\7e\2\2\u01e7\u01e8\7g\2\2\u01e8F\3\2\2\2\u01e9\u01ea"+
		"\7n\2\2\u01ea\u01eb\7q\2\2\u01eb\u01ec\7p\2\2\u01ec\u01ed\7i\2\2\u01ed"+
		"H\3\2\2\2\u01ee\u01ef\7p\2\2\u01ef\u01f0\7c\2\2\u01f0\u01f1\7v\2\2\u01f1"+
		"\u01f2\7k\2\2\u01f2\u01f3\7x\2\2\u01f3\u01f4\7g\2\2\u01f4J\3\2\2\2\u01f5"+
		"\u01f6\7p\2\2\u01f6\u01f7\7g\2\2\u01f7\u01f8\7y\2\2\u01f8L\3\2\2\2\u01f9"+
		"\u01fa\7r\2\2\u01fa\u01fb\7c\2\2\u01fb\u01fc\7e\2\2\u01fc\u01fd\7m\2\2"+
		"\u01fd\u01fe\7c\2\2\u01fe\u01ff\7i\2\2\u01ff\u0200\7g\2\2\u0200N\3\2\2"+
		"\2\u0201\u0202\7r\2\2\u0202\u0203\7t\2\2\u0203\u0204\7k\2\2\u0204\u0205"+
		"\7x\2\2\u0205\u0206\7c\2\2\u0206\u0207\7v\2\2\u0207\u0208\7g\2\2\u0208"+
		"P\3\2\2\2\u0209\u020a\7r\2\2\u020a\u020b\7t\2\2\u020b\u020c\7q\2\2\u020c"+
		"\u020d\7v\2\2\u020d\u020e\7g\2\2\u020e\u020f\7e\2\2\u020f\u0210\7v\2\2"+
		"\u0210\u0211\7g\2\2\u0211\u0212\7f\2\2\u0212R\3\2\2\2\u0213\u0214\7r\2"+
		"\2\u0214\u0215\7w\2\2\u0215\u0216\7d\2\2\u0216\u0217\7n\2\2\u0217\u0218"+
		"\7k\2\2\u0218\u0219\7e\2\2\u0219T\3\2\2\2\u021a\u021b\7t\2\2\u021b\u021c"+
		"\7g\2\2\u021c\u021d\7v\2\2\u021d\u021e\7w\2\2\u021e\u021f\7t\2\2\u021f"+
		"\u0220\7p\2\2\u0220V\3\2\2\2\u0221\u0222\7u\2\2\u0222\u0223\7j\2\2\u0223"+
		"\u0224\7q\2\2\u0224\u0225\7t\2\2\u0225\u0226\7v\2\2\u0226X\3\2\2\2\u0227"+
		"\u0228\7u\2\2\u0228\u0229\7v\2\2\u0229\u022a\7c\2\2\u022a\u022b\7v\2\2"+
		"\u022b\u022c\7k\2\2\u022c\u022d\7e\2\2\u022dZ\3\2\2\2\u022e\u022f\7u\2"+
		"\2\u022f\u0230\7v\2\2\u0230\u0231\7t\2\2\u0231\u0232\7k\2\2\u0232\u0233"+
		"\7e\2\2\u0233\u0234\7v\2\2\u0234\u0235\7h\2\2\u0235\u0236\7r\2\2\u0236"+
		"\\\3\2\2\2\u0237\u0238\7u\2\2\u0238\u0239\7w\2\2\u0239\u023a\7r\2\2\u023a"+
		"\u023b\7g\2\2\u023b\u023c\7t\2\2\u023c^\3\2\2\2\u023d\u023e\7u\2\2\u023e"+
		"\u023f\7y\2\2\u023f\u0240\7k\2\2\u0240\u0241\7v\2\2\u0241\u0242\7e\2\2"+
		"\u0242\u0243\7j\2\2\u0243`\3\2\2\2\u0244\u0245\7u\2\2\u0245\u0246\7{\2"+
		"\2\u0246\u0247\7p\2\2\u0247\u0248\7e\2\2\u0248\u0249\7j\2\2\u0249\u024a"+
		"\7t\2\2\u024a\u024b\7q\2\2\u024b\u024c\7p\2\2\u024c\u024d\7k\2\2\u024d"+
		"\u024e\7|\2\2\u024e\u024f\7g\2\2\u024f\u0250\7f\2\2\u0250b\3\2\2\2\u0251"+
		"\u0252\7v\2\2\u0252\u0253\7j\2\2\u0253\u0254\7k\2\2\u0254\u0255\7u\2\2"+
		"\u0255d\3\2\2\2\u0256\u0257\7v\2\2\u0257\u0258\7j\2\2\u0258\u0259\7t\2"+
		"\2\u0259\u025a\7q\2\2\u025a\u025b\7y\2\2\u025bf\3\2\2\2\u025c\u025d\7"+
		"v\2\2\u025d\u025e\7j\2\2\u025e\u025f\7t\2\2\u025f\u0260\7q\2\2\u0260\u0261"+
		"\7y\2\2\u0261\u0262\7u\2\2\u0262h\3\2\2\2\u0263\u0264\7v\2\2\u0264\u0265"+
		"\7t\2\2\u0265\u0266\7c\2\2\u0266\u0267\7p\2\2\u0267\u0268\7u\2\2\u0268"+
		"\u0269\7k\2\2\u0269\u026a\7g\2\2\u026a\u026b\7p\2\2\u026b\u026c\7v\2\2"+
		"\u026cj\3\2\2\2\u026d\u026e\7v\2\2\u026e\u026f\7t\2\2\u026f\u0270\7{\2"+
		"\2\u0270l\3\2\2\2\u0271\u0272\7x\2\2\u0272\u0273\7c\2\2\u0273\u0274\7"+
		"t\2\2\u0274n\3\2\2\2\u0275\u0276\7x\2\2\u0276\u0277\7q\2\2\u0277\u0278"+
		"\7k\2\2\u0278\u0279\7f\2\2\u0279p\3\2\2\2\u027a\u027b\7x\2\2\u027b\u027c"+
		"\7q\2\2\u027c\u027d\7n\2\2\u027d\u027e\7c\2\2\u027e\u027f\7v\2\2\u027f"+
		"\u0280\7k\2\2\u0280\u0281\7n\2\2\u0281\u0282\7g\2\2\u0282r\3\2\2\2\u0283"+
		"\u0284\7y\2\2\u0284\u0285\7j\2\2\u0285\u0286\7k\2\2\u0286\u0287\7n\2\2"+
		"\u0287\u0288\7g\2\2\u0288t\3\2\2\2\u0289\u0297\7\62\2\2\u028a\u0294\t"+
		"\5\2\2\u028b\u028d\5\u00efx\2\u028c\u028b\3\2\2\2\u028c\u028d\3\2\2\2"+
		"\u028d\u0295\3\2\2\2\u028e\u0290\7a\2\2\u028f\u028e\3\2\2\2\u0290\u0291"+
		"\3\2\2\2\u0291\u028f\3\2\2\2\u0291\u0292\3\2\2\2\u0292\u0293\3\2\2\2\u0293"+
		"\u0295\5\u00efx\2\u0294\u028c\3\2\2\2\u0294\u028f\3\2\2\2\u0295\u0297"+
		"\3\2\2\2\u0296\u0289\3\2\2\2\u0296\u028a\3\2\2\2\u0297\u0299\3\2\2\2\u0298"+
		"\u029a\t\6\2\2\u0299\u0298\3\2\2\2\u0299\u029a\3\2\2\2\u029av\3\2\2\2"+
		"\u029b\u029c\7\62\2\2\u029c\u029d\t\7\2\2\u029d\u02a5\t\b\2\2\u029e\u02a0"+
		"\t\t\2\2\u029f\u029e\3\2\2\2\u02a0\u02a3\3\2\2\2\u02a1\u029f\3\2\2\2\u02a1"+
		"\u02a2\3\2\2\2\u02a2\u02a4\3\2\2\2\u02a3\u02a1\3\2\2\2\u02a4\u02a6\t\b"+
		"\2\2\u02a5\u02a1\3\2\2\2\u02a5\u02a6\3\2\2\2\u02a6\u02a8\3\2\2\2\u02a7"+
		"\u02a9\t\6\2\2\u02a8\u02a7\3\2\2\2\u02a8\u02a9\3\2\2\2\u02a9x\3\2\2\2"+
		"\u02aa\u02ae\7\62\2\2\u02ab\u02ad\7a\2\2\u02ac\u02ab\3\2\2\2\u02ad\u02b0"+
		"\3\2\2\2\u02ae\u02ac\3\2\2\2\u02ae\u02af\3\2\2\2\u02af\u02b1\3\2\2\2\u02b0"+
		"\u02ae\3\2\2\2\u02b1\u02b9\t\n\2\2\u02b2\u02b4\t\13\2\2\u02b3\u02b2\3"+
		"\2\2\2\u02b4\u02b7\3\2\2\2\u02b5\u02b3\3\2\2\2\u02b5\u02b6\3\2\2\2\u02b6"+
		"\u02b8\3\2\2\2\u02b7\u02b5\3\2\2\2\u02b8\u02ba\t\n\2\2\u02b9\u02b5\3\2"+
		"\2\2\u02b9\u02ba\3\2\2\2\u02ba\u02bc\3\2\2\2\u02bb\u02bd\t\6\2\2\u02bc"+
		"\u02bb\3\2\2\2\u02bc\u02bd\3\2\2\2\u02bdz\3\2\2\2\u02be\u02bf\7\62\2\2"+
		"\u02bf\u02c0\t\f\2\2\u02c0\u02c8\t\r\2\2\u02c1\u02c3\t\16\2\2\u02c2\u02c1"+
		"\3\2\2\2\u02c3\u02c6\3\2\2\2\u02c4\u02c2\3\2\2\2\u02c4\u02c5\3\2\2\2\u02c5"+
		"\u02c7\3\2\2\2\u02c6\u02c4\3\2\2\2\u02c7\u02c9\t\r\2\2\u02c8\u02c4\3\2"+
		"\2\2\u02c8\u02c9\3\2\2\2\u02c9\u02cb\3\2\2\2\u02ca\u02cc\t\6\2\2\u02cb"+
		"\u02ca\3\2\2\2\u02cb\u02cc\3\2\2\2\u02cc|\3\2\2\2\u02cd\u02ce\5\u00ef"+
		"x\2\u02ce\u02d0\7\60\2\2\u02cf\u02d1\5\u00efx\2\u02d0\u02cf\3\2\2\2\u02d0"+
		"\u02d1\3\2\2\2\u02d1\u02d5\3\2\2\2\u02d2\u02d3\7\60\2\2\u02d3\u02d5\5"+
		"\u00efx\2\u02d4\u02cd\3\2\2\2\u02d4\u02d2\3\2\2\2\u02d5\u02d7\3\2\2\2"+
		"\u02d6\u02d8\5\u00e7t\2\u02d7\u02d6\3\2\2\2\u02d7\u02d8\3\2\2\2\u02d8"+
		"\u02da\3\2\2\2\u02d9\u02db\t\17\2\2\u02da\u02d9\3\2\2\2\u02da\u02db\3"+
		"\2\2\2\u02db\u02e5\3\2\2\2\u02dc\u02e2\5\u00efx\2\u02dd\u02df\5\u00e7"+
		"t\2\u02de\u02e0\t\17\2\2\u02df\u02de\3\2\2\2\u02df\u02e0\3\2\2\2\u02e0"+
		"\u02e3\3\2\2\2\u02e1\u02e3\t\17\2\2\u02e2\u02dd\3\2\2\2\u02e2\u02e1\3"+
		"\2\2\2\u02e3\u02e5\3\2\2\2\u02e4\u02d4\3\2\2\2\u02e4\u02dc\3\2\2\2\u02e5"+
		"~\3\2\2\2\u02e6\u02e7\7\62\2\2\u02e7\u02f1\t\7\2\2\u02e8\u02ea\5\u00eb"+
		"v\2\u02e9\u02eb\7\60\2\2\u02ea\u02e9\3\2\2\2\u02ea\u02eb\3\2\2\2\u02eb"+
		"\u02f2\3\2\2\2\u02ec\u02ee\5\u00ebv\2\u02ed\u02ec\3\2\2\2\u02ed\u02ee"+
		"\3\2\2\2\u02ee\u02ef\3\2\2\2\u02ef\u02f0\7\60\2\2\u02f0\u02f2\5\u00eb"+
		"v\2\u02f1\u02e8\3\2\2\2\u02f1\u02ed\3\2\2\2\u02f2\u02f3\3\2\2\2\u02f3"+
		"\u02f5\t\20\2\2\u02f4\u02f6\t\21\2\2\u02f5\u02f4\3\2\2\2\u02f5\u02f6\3"+
		"\2\2\2\u02f6\u02f7\3\2\2\2\u02f7\u02f9\5\u00efx\2\u02f8\u02fa\t\17\2\2"+
		"\u02f9\u02f8\3\2\2\2\u02f9\u02fa\3\2\2\2\u02fa\u0080\3\2\2\2\u02fb\u02fc"+
		"\7v\2\2\u02fc\u02fd\7t\2\2\u02fd\u02fe\7w\2\2\u02fe\u0305\7g\2\2\u02ff"+
		"\u0300\7h\2\2\u0300\u0301\7c\2\2\u0301\u0302\7n\2\2\u0302\u0303\7u\2\2"+
		"\u0303\u0305\7g\2\2\u0304\u02fb\3\2\2\2\u0304\u02ff\3\2\2\2\u0305\u0082"+
		"\3\2\2\2\u0306\u030b\7$\2\2\u0307\u030a\n\22\2\2\u0308\u030a\5\u00e9u"+
		"\2\u0309\u0307\3\2\2\2\u0309\u0308\3\2\2\2\u030a\u030d\3\2\2\2\u030b\u0309"+
		"\3\2\2\2\u030b\u030c\3\2\2\2\u030c\u030e\3\2\2\2\u030d\u030b\3\2\2\2\u030e"+
		"\u030f\7$\2\2\u030f\u0084\3\2\2\2\u0310\u0311\7p\2\2\u0311\u0312\7w\2"+
		"\2\u0312\u0313\7n\2\2\u0313\u0314\7n\2\2\u0314\u0086\3\2\2\2\u0315\u0316"+
		"\7*\2\2\u0316\u0088\3\2\2\2\u0317\u0318\7+\2\2\u0318\u008a\3\2\2\2\u0319"+
		"\u031a\7}\2\2\u031a\u008c\3\2\2\2\u031b\u031c\7\177\2\2\u031c\u008e\3"+
		"\2\2\2\u031d\u031e\7]\2\2\u031e\u0090\3\2\2\2\u031f\u0320\7_\2\2\u0320"+
		"\u0092\3\2\2\2\u0321\u0322\7=\2\2\u0322\u0094\3\2\2\2\u0323\u0324\7.\2"+
		"\2\u0324\u0096\3\2\2\2\u0325\u0326\7\60\2\2\u0326\u0098\3\2\2\2\u0327"+
		"\u0328\7?\2\2\u0328\u009a\3\2\2\2\u0329\u032a\7@\2\2\u032a\u009c\3\2\2"+
		"\2\u032b\u032c\7>\2\2\u032c\u009e\3\2\2\2\u032d\u032e\7#\2\2\u032e\u00a0"+
		"\3\2\2\2\u032f\u0330\7\u0080\2\2\u0330\u00a2\3\2\2\2\u0331\u0332\7A\2"+
		"\2\u0332\u00a4\3\2\2\2\u0333\u0334\7<\2\2\u0334\u00a6\3\2\2\2\u0335\u0336"+
		"\7?\2\2\u0336\u0337\7?\2\2\u0337\u00a8\3\2\2\2\u0338\u0339\7>\2\2\u0339"+
		"\u033a\7?\2\2\u033a\u00aa\3\2\2\2\u033b\u033c\7@\2\2\u033c\u033d\7?\2"+
		"\2\u033d\u00ac\3\2\2\2\u033e\u033f\7#\2\2\u033f\u0340\7?\2\2\u0340\u00ae"+
		"\3\2\2\2\u0341\u0342\7(\2\2\u0342\u0343\7(\2\2\u0343\u00b0\3\2\2\2\u0344"+
		"\u0345\7~\2\2\u0345\u0346\7~\2\2\u0346\u00b2\3\2\2\2\u0347\u0348\7-\2"+
		"\2\u0348\u0349\7-\2\2\u0349\u00b4\3\2\2\2\u034a\u034b\7/\2\2\u034b\u034c"+
		"\7/\2\2\u034c\u00b6\3\2\2\2\u034d\u034e\7-\2\2\u034e\u00b8\3\2\2\2\u034f"+
		"\u0350\7/\2\2\u0350\u00ba\3\2\2\2\u0351\u0352\7,\2\2\u0352\u00bc\3\2\2"+
		"\2\u0353\u0354\7\61\2\2\u0354\u00be\3\2\2\2\u0355\u0356\7(\2\2\u0356\u00c0"+
		"\3\2\2\2\u0357\u0358\7~\2\2\u0358\u00c2\3\2\2\2\u0359\u035a\7`\2\2\u035a"+
		"\u00c4\3\2\2\2\u035b\u035c\7\'\2\2\u035c\u00c6\3\2\2\2\u035d\u035e\7-"+
		"\2\2\u035e\u035f\7?\2\2\u035f\u00c8\3\2\2\2\u0360\u0361\7/\2\2\u0361\u0362"+
		"\7?\2\2\u0362\u00ca\3\2\2\2\u0363\u0364\7,\2\2\u0364\u0365\7?\2\2\u0365"+
		"\u00cc\3\2\2\2\u0366\u0367\7\61\2\2\u0367\u0368\7?\2\2\u0368\u00ce\3\2"+
		"\2\2\u0369\u036a\7(\2\2\u036a\u036b\7?\2\2\u036b\u00d0\3\2\2\2\u036c\u036d"+
		"\7~\2\2\u036d\u036e\7?\2\2\u036e\u00d2\3\2\2\2\u036f\u0370\7`\2\2\u0370"+
		"\u0371\7?\2\2\u0371\u00d4\3\2\2\2\u0372\u0373\7\'\2\2\u0373\u0374\7?\2"+
		"\2\u0374\u00d6\3\2\2\2\u0375\u0376\7>\2\2\u0376\u0377\7>\2\2\u0377\u0378"+
		"\7?\2\2\u0378\u00d8\3\2\2\2\u0379\u037a\7@\2\2\u037a\u037b\7@\2\2\u037b"+
		"\u037c\7?\2\2\u037c\u00da\3\2\2\2\u037d\u037e\7@\2\2\u037e\u037f\7@\2"+
		"\2\u037f\u0380\7@\2\2\u0380\u0381\7?\2\2\u0381\u00dc\3\2\2\2\u0382\u0383"+
		"\7/\2\2\u0383\u0384\7@\2\2\u0384\u00de\3\2\2\2\u0385\u0386\7<\2\2\u0386"+
		"\u0387\7<\2\2\u0387\u00e0\3\2\2\2\u0388\u0389\7B\2\2\u0389\u00e2\3\2\2"+
		"\2\u038a\u038b\7\60\2\2\u038b\u038c\7\60\2\2\u038c\u038d\7\60\2\2\u038d"+
		"\u00e4\3\2\2\2\u038e\u0392\5\u00f3z\2\u038f\u0391\5\u00f1y\2\u0390\u038f"+
		"\3\2\2\2\u0391\u0394\3\2\2\2\u0392\u0390\3\2\2\2\u0392\u0393\3\2\2\2\u0393"+
		"\u00e6\3\2\2\2\u0394\u0392\3\2\2\2\u0395\u0397\t\23\2\2\u0396\u0398\t"+
		"\21\2\2\u0397\u0396\3\2\2\2\u0397\u0398\3\2\2\2\u0398\u0399\3\2\2\2\u0399"+
		"\u039a\5\u00efx\2\u039a\u00e8\3\2\2\2\u039b\u039c\7^\2\2\u039c\u03b1\t"+
		"\24\2\2\u039d\u03a2\7^\2\2\u039e\u03a0\t\25\2\2\u039f\u039e\3\2\2\2\u039f"+
		"\u03a0\3\2\2\2\u03a0\u03a1\3\2\2\2\u03a1\u03a3\t\n\2\2\u03a2\u039f\3\2"+
		"\2\2\u03a2\u03a3\3\2\2\2\u03a3\u03a4\3\2\2\2\u03a4\u03b1\t\n\2\2\u03a5"+
		"\u03a7\7^\2\2\u03a6\u03a8\7w\2\2\u03a7\u03a6\3\2\2\2\u03a8\u03a9\3\2\2"+
		"\2\u03a9\u03a7\3\2\2\2\u03a9\u03aa\3\2\2\2\u03aa\u03ab\3\2\2\2\u03ab\u03ac"+
		"\5\u00edw\2\u03ac\u03ad\5\u00edw\2\u03ad\u03ae\5\u00edw\2\u03ae\u03af"+
		"\5\u00edw\2\u03af\u03b1\3\2\2\2\u03b0\u039b\3\2\2\2\u03b0\u039d\3\2\2"+
		"\2\u03b0\u03a5\3\2\2\2\u03b1\u00ea\3\2\2\2\u03b2\u03bb\5\u00edw\2\u03b3"+
		"\u03b6\5\u00edw\2\u03b4\u03b6\7a\2\2\u03b5\u03b3\3\2\2\2\u03b5\u03b4\3"+
		"\2\2\2\u03b6\u03b9\3\2\2\2\u03b7\u03b5\3\2\2\2\u03b7\u03b8\3\2\2\2\u03b8"+
		"\u03ba\3\2\2\2\u03b9\u03b7\3\2\2\2\u03ba\u03bc\5\u00edw\2\u03bb\u03b7"+
		"\3\2\2\2\u03bb\u03bc\3\2\2\2\u03bc\u00ec\3\2\2\2\u03bd\u03be\t\b\2\2\u03be"+
		"\u00ee\3\2\2\2\u03bf\u03c7\t\26\2\2\u03c0\u03c2\t\27\2\2\u03c1\u03c0\3"+
		"\2\2\2\u03c2\u03c5\3\2\2\2\u03c3\u03c1\3\2\2\2\u03c3\u03c4\3\2\2\2\u03c4"+
		"\u03c6\3\2\2\2\u03c5\u03c3\3\2\2\2\u03c6\u03c8\t\26\2\2\u03c7\u03c3\3"+
		"\2\2\2\u03c7\u03c8\3\2\2\2\u03c8\u00f0\3\2\2\2\u03c9\u03cc\5\u00f3z\2"+
		"\u03ca\u03cc\t\26\2\2\u03cb\u03c9\3\2\2\2\u03cb\u03ca\3\2\2\2\u03cc\u00f2"+
		"\3\2\2\2\u03cd\u03d2\t\30\2\2\u03ce\u03d2\n\31\2\2\u03cf\u03d0\t\32\2"+
		"\2\u03d0\u03d2\t\33\2\2\u03d1\u03cd\3\2\2\2\u03d1\u03ce\3\2\2\2\u03d1"+
		"\u03cf\3\2\2\2\u03d2\u00f4\3\2\2\2\64\2\u00ff\u010b\u0115\u0123\u012b"+
		"\u012d\u028c\u0291\u0294\u0296\u0299\u02a1\u02a5\u02a8\u02ae\u02b5\u02b9"+
		"\u02bc\u02c4\u02c8\u02cb\u02d0\u02d4\u02d7\u02da\u02df\u02e2\u02e4\u02ea"+
		"\u02ed\u02f1\u02f5\u02f9\u0304\u0309\u030b\u0392\u0397\u039f\u03a2\u03a9"+
		"\u03b0\u03b5\u03b7\u03bb\u03c3\u03c7\u03cb\u03d1\4\2\3\2\2\4\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}