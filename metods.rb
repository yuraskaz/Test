class Test
  def initialize
    puts "Тест на общительность ,в Зависимости от ответа введите Да-1, Иногда -2, Нет- 3"
    @questions = [
        "Вам предстоит ординарная или деловая встреча. Выбивает ли Вас ее ожидание из колеи?",
        "Вызывает ли у Вас смятение и неудовольствие поручение выступить с докладом, сообщением,\n
     информацией на каком-либо совещании, собрании или тому подобном мероприятии?",
        "Не откладываете ли Вы визит к врачу до последнего момента?",
        "Вам предлагают выехать в командировку в город, где Вы никогда не бывали.\n
     Приложите ли Вы максимум усилий, чтобы избежать этой командировки?",
        "Любите ли Вы делиться своими переживаниями с кем бы то ни было?",
        "Раздражаетесь ли Вы, если незнакомый человек на улице обратится к Вам с просьбой\n
     (показать дорогу, назвать время, ответить на какой-то вопрос)?",
        "Верите ли Вы, что существует проблема отцов и детей  и что людям разных поколений \n
     трудно понимать друг друга?",
        "Постесняетесь ли Вы напомнить знакомому, что он забыл Вам вернуть деньги,\n
     которые занял несколько месяцев назад?",
        "В ресторане либо в столовой Вам подали явно недоброкачественное блюдо.\n
     Промолчите ли Вы, лишь рассерженно отодвинув тарелку?",
        "Оказавшись один на один с незнакомым человеком, Вы не вступите с ним в беседу и\n
     будете тяготиться, если первым заговорит он. Так ли это?",
        " Вас приводит в ужас любая длинная очередь, где бы она ни была (в магазине, библиотеке,\n
    кассе кинотеатра). Предпочитаете ли Вы отказаться от своего намерения или встанете\n
     в хвост и будете томиться в ожидании?",
        "Боитесь ли Вы участвовать в какой-либо комиссии по рассмотрению конфликтных ситуаций?",
        "У Вас есть собственные сугубо индивидуальные критерии оценки произведений литературы,\n
     искусства, культуры и никаких чужих мнений на этот счет Вы не приемлете. Это так?",
        "Услышав где-либо в кулуарах высказывание явно ошибочной точки зрения по хорошо\n
     известному Вам вопросу, предпочитаете ли Вы промолчать и не вступать в разговор?",
        "Вызывает ли у Вас досаду чья-либо просьба помочь разобраться в том или ином \n
    служебном вопросе или учебной теме?",
        "Охотнее ли Вы излагаете свою точку зрения (мнение, оценку) в письменной форме,\n
     чем в устной?"]
    @score = calculate_score

  end

  def calculate_score #метод опрашиватель
    for item in @questions do # в этом цикле производим опрос
      puts item
      choice = STDIN.gets.chomp.to_i

      while choice != 1 && choice != 2 && choice != 3 do # защита от неправильного ввода
        puts "Введите Да-1, Иногда -2, Нет- 3"
        choice = STDIN.gets.chomp.to_i
      end

      count = 0

      if choice == 1
        count += 2
      elsif choice == 2
        count += 1
      else
        count += 0
      end
    end
    count
  end

  def score
    @score
  end
end

class PrintResult
  def initialize
    @answers = ["30-32 очко. Вы явно некоммуникабельны, и это Ваша беда, так как больше всего \n
    страдаете от этого Вы сами. Но и близким Вам людям нелегко. На Вас трудно положиться в деле,\n
    которое требует групповых усилий. Старайтесь быть общительнее, контролируйте себя.",

                "25-29 очков. Вы замкнуты, неразговорчивы, предпочитаете одиночество, поэтому у Вас \n
    мало друзей. Новая работа и необходимость новых контактов если и не ввергают Вас в панику,\n
    то надолго выводят из равновесия. Вы знаете эту особенность своего характера и бываете \n
    недовольны собой. Но не ограничивайтесь только таким недовольством – в Вашей власти\n
    переломить эти особенности характера. Разве не бывает, что при какой-либо сильной \n
    увлеченности Вы приобретаете вдруг полную коммуникабельность? Стоит только встряхнуться.",

                "19-24 очков. Вы в известной степени общительны и в незнакомой обстановке чувствуете себя\n
    вполне уверенно. Новые проблемы Вас не пугают. И все же с новыми людьми сходитесь с оглядкой,\n
    в спорах и диспутах участвуюте неохотно. В Ваших высказываниях порой слишком много сарказма,\n
    без всякого на то основания. Эти недостатки исправимы.",

                "14-18 очков. У вас нормальная коммуникабельность. Вы любознательны, охотно слушаете \n
    интересного собеседника, достаточно терпеливы в общении, отстаиваете свою точку зрения \n
    без вспыльчивости. Без неприятных переживаний идете на встречу с новыми людьми.\n
    В то же время не любите шумных компаний; экстравагантные выходки и многословие вызывают\n
     у Вас раздражение.",

                "9-13 очков. Вы весьма общительны (порой, быть может, даже сверх меры). Любопытны,\n
    разговорчивы, любите высказываться по разным вопросам, что, бывает, вызывает раздражение\n
    окружающих. Охотно знакомитесь с новыми людьми. Любите бывать в центре внимания,\n
    никому не отказываете в просьбах, хотя не всегда можете их выполнить. Бывает, вспылите,\n
    но быстро отходите. Чего Вам недостает, так это усидчивости, терпения и отваги при\n
    столкновении с серьезными проблемами. При желании, однако, Вы можете себя заставить не \n
    отступать.",

                "4-8 очков. Вы, должно быть, «рубаха-парень». Общительность бьет из Вас ключом.\n
    Вы всегда в курсе всех дел. Вы любите принимать участие во всех дискуссиях, хотя \n
    серьезные темы могут вызвать у Вас мигрень или даже хандру. Охотно берете слово по \n
    любому вопросу, даже если имеете о нем поверхностное представление. Всюду чувствуете \n
    себя в своей тарелке. Беретесь за любое дело, хотя не всегда можете успешно довести \n
    его до конца. По этой самой причине руководители и коллеги относятся к Вам с некоторой\n
     опаской и сомнениями. Задумайтесь над этими фактами.",

                "3 очка и менее. Ваша коммуникабельность носит болезненный характер. Вы говорливы,\n
     многословны, вмешиваетесь в дела, которые не имеют к Вам никакого отношения.\n
    Беретесь судить о проблемах, в которых совершенно не компетентны. Вольно или \n
    невольно Вы часто бываете причиной разного рода конфликтов в Вашем окружении.\n
    Вспыльчивы, обидчивы, нередко бываете необъективны. Серьезная работа не для Вас.\n
    Людям – и на работе, и дома, и вообще повсюду – трудно с Вами. Да, Вам надо поработать\n
    над собой и своим характером! Прежде всего воспитывайте в себе терпеливость и\n
    сдержанность, уважительно относитесь к людям, наконец, подумайте о своем здоровье\n
     – такой стиль жизни не проходит бесследно."]
  end

  def output(new_test)
    puts "Вы набрали #{new_test.score} баллов"
    if new_test.score >= 30
      puts @answers[0]
    elsif new_test.score >= 25 && new_test.score <= 29
      puts @answers[1]
    elsif new_test.score >= 19 && new_test.score <= 24
      puts @answers[2]
    elsif new_test.score >= 14 && new_test.score <= 18
      puts @answers[3]
    elsif new_test.score >= 9 && new_test.score <= 13
      puts @answers[4]
    elsif new_test.score >= 4 && new_test.score <= 8
      puts @answers[5]
    else
      puts @answers[6]
    end
  end

end
