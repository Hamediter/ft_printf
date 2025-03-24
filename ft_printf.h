/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aboutale <aboutale@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/14 12:32:08 by aboutale          #+#    #+#             */
/*   Updated: 2024/12/27 20:09:55 by aboutale         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <unistd.h>
# include <stdarg.h>
# include <stdio.h>

void	ft_putstr_fd(char *s, int fd);
int		ft_putchar_fd(char c, int fd);
int		ft_putnbr_fd(int n, int fd);
int		printformat(char spe, va_list ap);
int		ft_printf(const char *str, ...)__attribute__((format(printf, 1, 2)));

int		ft_putnbr_base_fd(unsigned long n, int fd);
int		ft_putnbr_basex_fd(unsigned int n, int fd);
int		unsignedputnbr(unsigned int n, int fd);
size_t	unsignedcountnumbers(unsigned int nb);

#endif
